# Regenerates the RenoDX treatment for the standalone postprocessing final family
# (grading/postprocessing_final*, RenderPostProcessPS*). Two structural shapes exist
# in the 1.13.00 package:
#   SLIM (the plain, fsr, and RenderPostProcessPS finals in every shipped build): input scene color is already
#     tonemapped; treatment = chromatic aberration scaling, vanilla film-grain gate,
#     CustomPostProcessing injection (grain/sharpen), sharpening gates/strength,
#     HDR sRGB-decode removal, CUSTOM_VIGNETTE, FinalizeSDR/HDR. Detected by the
#     ABSENCE of ExposureConstantBuffer b31.
#   FUSED (unobserved package permutations): the vanilla tonemap pipeline is inlined
#     UNCONDITIONALLY in the final pass (exposure, slope/offset/power grade, one of
#     several tone-curve families, per-permutation output transform), with the screen
#     fade fused at the curve output. Treatment = tonemap.hlsli include arrangement,
#     opaque segment replacement from the first CDL grade line (constant
#     1.705049991607666f) through the three fade output lines with TonemapReplacer,
#     RCAS sharpening with re-tonemapped neighbor taps, RenoDX film grain, fade
#     re-emission, plus the shared CA/grain-gate/vignette/Finalize patches. Detected
#     by ExposureConstantBuffer b31.
# Optional -NativeFolder re-stages each file from the fresh native decompile
# (matched by the 0x hash in the file name) before patching.
# Every skipped pattern is reported; treat any MISSING/FAILED list as
# stop-and-investigate. Decompiler note: declarations are hoisted, so no regex here
# may require a float/bool prefix before SSA temporaries, and .NET multiline $ does
# not match before \r - use explicit \r?\n or drop the anchor.
[CmdletBinding()]
param(
    [string]$Folder = '',
    [string]$NativeFolder = '',
    [switch]$WhatIf
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
. (Join-Path $scriptDir 'GradingAnnotations.ps1')

if ([string]::IsNullOrWhiteSpace($Folder)) {
    $Folder = Join-Path $scriptDir '..\finals'
}

if (-not (Test-Path -LiteralPath $Folder)) {
    throw "Folder not found: $Folder"
}

$folderPath = (Resolve-Path -LiteralPath $Folder).Path

$nativePath = $null
if (-not [string]::IsNullOrWhiteSpace($NativeFolder)) {
    if (-not (Test-Path -LiteralPath $NativeFolder)) {
        throw "Native folder not found: $NativeFolder"
    }
    $nativePath = (Resolve-Path -LiteralPath $NativeFolder).Path
}

$files = @(Get-ChildItem -LiteralPath $folderPath -File -Filter '*.hlsl' |
    Where-Object {
        $_.Name -match '^(RenderPostProcessPS|postprocessing_final|postprocessing_final_fsr|postprocessing_final_fused)_0x[0-9A-Fa-f]+\.ps_6_6\.hlsl$'
    })
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

$patchVersion = '1.13.00'
# The final-pass control scaling (vignette, sharpening strength and its vanilla gate,
# chromatic aberration, the PQ sRGB-decode removal) and the tonemap.hlsli dependency
# arrangement are a separately authored group of patches with their own version.
$finalControlsPatchVersion = '1.16.00'

# Anchor constants as regex fragments, not literals. The structural decompiler prints
# float constants at whatever precision round-trips, and that precision depends on the
# decompiler build: the same AP1 grade coefficient appears as '1.705049991607666f' in
# older output and '1.70505f' in current output. Matching one spelling makes every
# anchor here miss on decompiles from the other, which reads like the game changed.
# Each fragment accepts both spellings of one value.
$cGradeR = '(?:1\.705049991607666f|1\.70505f)'
$cGradeG = '(?:1\.1407999992370605f|1\.1408f)'
$cGradeB = '(?:1\.1529699563980103f|1\.15297f)'
$cSrgbCutoff = '(?:0\.040449999272823334f|0\.04045f)'
$cSrgbSlope = '(?:0\.07739938050508499f|0\.07739938f)'
$cSrgbOffset = '(?:0\.054999999701976776f|0\.055f)'
$cSrgbScale = '(?:0\.9478673338890076f|0\.94786733f)'
$cSrgbGamma = '(?:2\.4000000953674316f|2\.4f)'

$updatedFiles = New-Object System.Collections.Generic.List[string]
$stagedFiles = New-Object System.Collections.Generic.List[string]
$nativeMissing = New-Object System.Collections.Generic.List[string]
$missingPattern = New-Object System.Collections.Generic.List[string]
$fusedSegmentFailed = New-Object System.Collections.Generic.List[string]
$missingCBufferPattern = New-Object System.Collections.Generic.List[string]
$curveVarLeaks = New-Object System.Collections.Generic.List[string]
$bindingsAnnotationMissing = New-Object System.Collections.Generic.List[string]

$slimCount = 0
$fusedCount = 0
$fusedTonemapReplaced = 0

function Find-BlockEnd {
    param(
        [Parameter(Mandatory)] [string]$Text,
        [Parameter(Mandatory)] [int]$OpenBraceIndex
    )

    $depth = 1
    $index = $OpenBraceIndex + 1
    while ($index -lt $Text.Length -and $depth -gt 0) {
        $char = $Text[$index]
        if ($char -eq '{') {
            $depth++
        } elseif ($char -eq '}') {
            $depth--
        }
        $index++
    }

    if ($depth -ne 0) {
        return -1
    }

    return $index
}

function Find-IfElseEnd {
    param(
        [Parameter(Mandatory)] [string]$Text,
        [Parameter(Mandatory)] [System.Text.RegularExpressions.Match]$IfMatch
    )

    $ifOpenBrace = $Text.IndexOf('{', $IfMatch.Index)
    if ($ifOpenBrace -lt 0) { return -1 }

    $ifEnd = Find-BlockEnd -Text $Text -OpenBraceIndex $ifOpenBrace
    if ($ifEnd -lt 0) { return -1 }

    $cursor = $ifEnd
    while ($cursor -lt $Text.Length -and [char]::IsWhiteSpace($Text[$cursor])) { $cursor++ }
    if ($cursor + 4 -gt $Text.Length -or $Text.Substring($cursor, 4) -ne 'else') {
        return $ifEnd
    }

    $cursor += 4
    while ($cursor -lt $Text.Length -and [char]::IsWhiteSpace($Text[$cursor])) { $cursor++ }
    if ($cursor -ge $Text.Length -or $Text[$cursor] -ne '{') {
        return $ifEnd
    }

    return (Find-BlockEnd -Text $Text -OpenBraceIndex $cursor)
}

function Find-LineStart {
    param([string]$Text, [int]$Index, [string]$Newline)
    $lineStart = $Text.LastIndexOf($Newline, $Index)
    if ($lineStart -lt 0) { return 0 }
    return $lineStart + $Newline.Length
}

# Wrap a cbuffer the tonemap.hlsli include also provides in '#if 0'. Returns the
# updated text and whether the cbuffer was found (already-wrapped counts as found).
function Set-CBufferWrap {
    param([string]$Text, [string]$CBufferPattern, [string]$Newline)

    $cbufferMatch = [regex]::Match($Text, $CBufferPattern)
    if ($cbufferMatch.Success) {
        $beforeCBuffer = $Text.Substring(0, $cbufferMatch.Index)
        $lastProvidedIf = $beforeCBuffer.LastIndexOf('#if 0 // Provided by tonemap.hlsli', [System.StringComparison]::Ordinal)
        $lastEndIf = $beforeCBuffer.LastIndexOf('#endif', [System.StringComparison]::Ordinal)
        $nextEndIf = $Text.IndexOf('#endif', $cbufferMatch.Index + $cbufferMatch.Length, [System.StringComparison]::Ordinal)
        if ($lastProvidedIf -gt $lastEndIf -and $nextEndIf -ge 0) {
            return [pscustomobject]@{ Content = $Text; Found = $true }
        }

        $updated = $Text.Substring(0, $cbufferMatch.Index) +
            "#if 0 // Provided by tonemap.hlsli$Newline" + $cbufferMatch.Value + "$Newline#endif" +
            $Text.Substring($cbufferMatch.Index + $cbufferMatch.Length)
        return [pscustomobject]@{ Content = $updated; Found = $true }
    }

    return [pscustomobject]@{ Content = $Text; Found = $false }
}

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName)

    # ---- Optional native re-staging by file-name hash ----
    if ($null -ne $nativePath) {
        $hashMatch = [regex]::Match($file.Name, '0x[0-9A-Fa-f]{8}')
        if ($hashMatch.Success) {
            $nativeFile = Join-Path $nativePath ($hashMatch.Value + '.ps_6_6.hlsl')
            if (Test-Path -LiteralPath $nativeFile) {
                $content = [System.IO.File]::ReadAllText($nativeFile)
                # Keep the destination file's newline convention so regeneration
                # does not churn line endings against the committed tree.
                $existing = [System.IO.File]::ReadAllText($file.FullName)
                if (-not $existing.Contains("`r`n") -and $content.Contains("`r`n")) {
                    $content = $content.Replace("`r`n", "`n")
                }
                $stagedFiles.Add($file.Name)
            } else {
                $nativeMissing.Add($file.Name)
            }
        } else {
            $nativeMissing.Add($file.Name)
        }
    }

    $originalContent = [System.IO.File]::ReadAllText($file.FullName)
    $newline = if ($content.Contains("`r`n")) { "`r`n" } else { "`n" }
    $missing = $false

    $isHdr = $content.Contains('78.84375f')
    $hasDepth = $content.Contains('__3__36__0__0__g_depth')
    # Fused permutations inline the tonemap and are the only finals reading the
    # exposure buffer; slim finals receive already-tonemapped scene color.
    $isFused = [regex]::IsMatch($content, 'cbuffer \S+ExposureConstantBuffer : register\(b31, space35\)')
    if ($isFused) { $fusedCount++ } else { $slimCount++ }

    if ($isFused) {
        # tonemap.hlsli supplies TonemapReplacer/ApplyRCASTaps/effects and its own
        # Exposure/GlobalPushConstants/ColorBlind declarations, so the include goes
        # after SceneConstantBuffer and the duplicate cbuffers get '#if 0' wraps.
        if ($content -notmatch '(?m)^#include\s+"\.\./tonemap\.hlsli"\r?$') {
            $includeBlock = '#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1' + $newline +
                '#define RENODX_TONEMAP_SCENE_TIME_W _time.w' + $newline +
                '#include "../tonemap.hlsli"' + $newline + $newline

            $sceneMatch = [regex]::Match($content, '(?s)cbuffer __3__35__0__0__SceneConstantBuffer : register\(b(?:15|16), space35\) \{.*?\};')
            if ($sceneMatch.Success) {
                $insertAt = $sceneMatch.Index + $sceneMatch.Length
                $content = $content.Substring(0, $insertAt) + $newline + $newline + $includeBlock + $content.Substring($insertAt)
            } else {
                $missingCBufferPattern.Add("$($file.Name): SceneConstantBuffer")
            }
        }

        $exposureWrap = Set-CBufferWrap -Text $content -CBufferPattern '(?s)cbuffer __3__35__0__0__ExposureConstantBuffer : register\(b31, space35\) \{.*?\};' -Newline $newline
        $content = $exposureWrap.Content
        if (-not $exposureWrap.Found) { $missingCBufferPattern.Add("$($file.Name): ExposureConstantBuffer") }

        $pushWrap = Set-CBufferWrap -Text $content -CBufferPattern '(?s)cbuffer __3__1__0__0__GlobalPushConstants : register\(b0, space1\) \{.*?\};' -Newline $newline
        $content = $pushWrap.Content
        if (-not $pushWrap.Found) { $missingCBufferPattern.Add("$($file.Name): GlobalPushConstants") }

        # HDR fused permutations have no color-blind cbuffer; wrap only when present.
        $colorBlindWrap = Set-CBufferWrap -Text $content -CBufferPattern '(?s)cbuffer __3__35__0__0__ColorBlindConstantBuffer : register\(b47, space35\) \{.*?\};' -Newline $newline
        $content = $colorBlindWrap.Content
        if (-not $colorBlindWrap.Found -and -not $isHdr) { $missingCBufferPattern.Add("$($file.Name): ColorBlindConstantBuffer") }
    } else {
        if ($content -notmatch '(?m)^#include\s+"\.\./\.\./common\.hlsl"\r?$') {
            $content = '#include "../../common.hlsl"' + $newline + $newline + $content
        }
    }

    $sceneSampleMatch = [regex]::Match($content, '(?m)^\s*(?:(?:float4)\s+)?(_\d+)\s*=\s*__3__36__0__0__g_sceneColor\.Sample\(')
    if (-not $sceneSampleMatch.Success) {
        $missing = $true
    }
    $sceneSample = if ($sceneSampleMatch.Success) { $sceneSampleMatch.Groups[1].Value } else { '' }

    $chromaticMatch = [regex]::Match($content, 'if\s*\(\s*_postProcessParams\.w\s*>\s*0\.0f\s*\)\s*\{')
    $redVar = ''
    $blueVar = ''
    if ($chromaticMatch.Success -and -not $content.Contains('CUSTOM_CHROMATIC_ABERRATION')) {
        $chromaticEnd = Find-IfElseEnd -Text $content -IfMatch $chromaticMatch
        if ($chromaticEnd -gt 0 -and -not [string]::IsNullOrWhiteSpace($sceneSample)) {
            $chromaticBlock = $content.Substring($chromaticMatch.Index, $chromaticEnd - $chromaticMatch.Index)
            $redMatch = [regex]::Match($chromaticBlock, "(?m)^\s*(_\d+)\s*=\s*$([regex]::Escape($sceneSample))\.x\s*;")
            $blueMatch = [regex]::Match($chromaticBlock, "(?m)^\s*(_\d+)\s*=\s*$([regex]::Escape($sceneSample))\.z\s*;")
            if ($redMatch.Success -and $blueMatch.Success) {
                $redVar = $redMatch.Groups[1].Value
                $blueVar = $blueMatch.Groups[1].Value
                $insert = $newline +
                    "  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: $finalControlsPatchVersion]$newline" +
                    "  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.$newline" +
                    "  $redVar = lerp($sceneSample.x, $redVar, CUSTOM_CHROMATIC_ABERRATION);$newline" +
                    "  $blueVar = lerp($sceneSample.z, $blueVar, CUSTOM_CHROMATIC_ABERRATION);$newline" +
                    "  // RenoDX: <<< [Patch: FinalChromaticAberration]$newline"
                $content = $content.Substring(0, $chromaticEnd) + $insert + $content.Substring($chromaticEnd)
            } else {
                $missing = $true
            }
        } else {
            $missing = $true
        }
    }

    $filmGrainMatch = [regex]::Match($content, 'if\s*\(\s*_slopeParams\.w\s*>\s*0\.0f\s*\)\s*\{')
    if ($filmGrainMatch.Success -and -not $content.Contains('CUSTOM_FILM_GRAIN_TYPE == 0')) {
        $lineStart = Find-LineStart -Text $content -Index $filmGrainMatch.Index -Newline $newline
        $prefix = "  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: $finalControlsPatchVersion]$newline" +
            "  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.$newline" +
            "  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;$newline"
        $content = $content.Substring(0, $lineStart) + $prefix + $content.Substring($lineStart)
        # The rewritten native condition belongs to this patch too, so the block closes
        # after it rather than after the declaration.
        $gate = 'if (vanilla_film_grain) {'
        $content = [regex]::Replace($content, 'if\s*\(\s*_slopeParams\.w\s*>\s*0\.0f\s*\)\s*\{', $gate, 1)
        $gateIdx = $content.IndexOf($gate, [System.StringComparison]::Ordinal)
        if ($gateIdx -ge 0) {
            $gateEnd = $gateIdx + $gate.Length
            $content = $content.Substring(0, $gateEnd) +
                "$newline  // RenoDX: <<< [Patch: CustomFilmGrainGate]" +
                $content.Substring($gateEnd)
        }
    }

    if (-not $isFused -and -not $content.Contains('CustomPostProcessing(')) {
        $filmGateMatch = [regex]::Match($content, 'if\s*\(\s*vanilla_film_grain\s*\)\s*\{')
        if ($filmGateMatch.Success) {
            $filmEnd = Find-IfElseEnd -Text $content -IfMatch $filmGateMatch
            $filmBlock = $content.Substring($filmGateMatch.Index, $filmEnd - $filmGateMatch.Index)
            if ([string]::IsNullOrWhiteSpace($redVar) -or [string]::IsNullOrWhiteSpace($blueVar)) {
                $redMatch = [regex]::Match($content, "(?m)^\s*(_\d+)\s*=\s*$([regex]::Escape($sceneSample))\.x\s*;")
                $blueMatch = [regex]::Match($content, "(?m)^\s*(_\d+)\s*=\s*$([regex]::Escape($sceneSample))\.z\s*;")
                if ($redMatch.Success) { $redVar = $redMatch.Groups[1].Value }
                if ($blueMatch.Success) { $blueVar = $blueMatch.Groups[1].Value }
            }
            $colorMatch = [regex]::Match($filmBlock, "(?s)else\s*\{\s*(_\d+)\s*=\s*$([regex]::Escape($redVar))\s*;\s*(_\d+)\s*=\s*$([regex]::Escape($sceneSample))\.y\s*;\s*(_\d+)\s*=\s*$([regex]::Escape($blueVar))\s*;")
            if ($filmEnd -gt 0 -and $colorMatch.Success) {
                $colorX = $colorMatch.Groups[1].Value
                $colorY = $colorMatch.Groups[2].Value
                $colorZ = $colorMatch.Groups[3].Value

                if ($isHdr) {
                    $postProcessBlock = $newline +
                        "  // RenoDX: >>> [Patch: FinalCustomPostProcessingHDR] [Version: $patchVersion]$newline" +
                        "  // Description: When custom film grain or sharpening is selected, decodes the HDR intermediate with the matching native/custom luminance scale, applies the shared post-process once in BT.709, and restores the PQ intermediate. RenoDX Off clears both type flags, so this block does not execute.$newline" +
                        "  if (CUSTOM_FILM_GRAIN_TYPE != 0 || CUSTOM_SHARPENING_TYPE != 0) {$newline" +
                        "    float3 color_pq = float3($colorX, $colorY, $colorZ);$newline$newline" +
                        "    float scaling = RENODX_TONE_MAP_TYPE == 0 ? 100.0f : RENODX_DIFFUSE_WHITE_NITS;$newline" +
                        "    float3 color_bt2020 = renodx::color::pq::DecodeSafe(color_pq, scaling);$newline" +
                        "    float3 color_bt709 = renodx::color::bt709::from::BT2020(color_bt2020);$newline" +
                        "    color_bt709 = CustomPostProcessing(color_bt709, TEXCOORD, __3__36__0__0__g_sceneColor, __0__4__0__0__g_staticBilinearClamp, 0, scaling);$newline" +
                        "    color_bt2020 = renodx::color::bt2020::from::BT709(color_bt709);$newline" +
                        "    color_pq = renodx::color::pq::EncodeSafe(color_bt2020, scaling);$newline$newline" +
                        "    $colorX = color_pq.x;$newline" +
                        "    $colorY = color_pq.y;$newline" +
                        "    $colorZ = color_pq.z;$newline" +
                        "  }$newline" +
                        "  // RenoDX: <<< [Patch: FinalCustomPostProcessingHDR]$newline"
                } else {
                    $postProcessBlock = $newline +
                        "  // RenoDX: >>> [Patch: FinalCustomPostProcessingSDR] [Version: $patchVersion]$newline" +
                        "  // Description: When custom film grain or sharpening is selected, decodes the native sRGB-domain color, applies the shared post-process once, and restores the native sRGB storage encoding. RenoDX Off clears both type flags, so this block does not execute.$newline" +
                        "  if (CUSTOM_FILM_GRAIN_TYPE != 0 || CUSTOM_SHARPENING_TYPE != 0) {$newline" +
                        "    float3 color_bt709 = renodx::color::srgb::Decode(float3($colorX, $colorY, $colorZ));$newline" +
                        "    color_bt709 = CustomPostProcessing(color_bt709, TEXCOORD, __3__36__0__0__g_sceneColor, __0__4__0__0__g_staticBilinearClamp, 1);$newline" +
                        "    color_bt709 = renodx::color::srgb::Encode(color_bt709);$newline" +
                        "    $colorX = color_bt709.x;$newline" +
                        "    $colorY = color_bt709.y;$newline" +
                        "    $colorZ = color_bt709.z;$newline" +
                        "  }$newline" +
                        "  // RenoDX: <<< [Patch: FinalCustomPostProcessingSDR]$newline"
                }

                $content = $content.Substring(0, $filmEnd) + $postProcessBlock + $content.Substring($filmEnd)
            } else {
                $missing = $true
            }
        } else {
            $missing = $true
        }
    }

    if (-not $isFused) {
        $vanillaSharpeningStrength = '(CUSTOM_SHARPENING_TYPE == 0 ? CUSTOM_SHARPENING : 0.f)'
        $content = $content.Replace("* $vanillaSharpeningStrength) +", '* CUSTOM_SHARPENING) +')
        $content = $content.Replace(", $vanillaSharpeningStrength);", ', CUSTOM_SHARPENING);')
        $content = $content.Replace("$newline$newline$newline    // RenoDX: >>> [Patch: FinalSharpeningStrength]", "$newline$newline    // RenoDX: >>> [Patch: FinalSharpeningStrength]")

        $content = [regex]::Replace(
            $content,
            "(?ms)\r?\n\s*// RenoDX: >>> \[Patch: FinalSharpeningStrength\] \[Version: [^\]]+\]\r?\n\s*_\d+\s*=\s*lerp\([^;]+;\r?\n\s*_\d+\s*=\s*lerp\([^;]+;\r?\n\s*_\d+\s*=\s*lerp\([^;]+;\r?\n\s*// RenoDX: <<< \[Patch: FinalSharpeningStrength\](?!\r?\n\s*\}\s*else)",
            $newline,
            1)
    }

    if (-not $isFused -and $hasDepth) {
        $depthSampleMatch = [regex]::Match($content, '__3__36__0__0__g_depth\.Sample\([^;]+;')
        if ($depthSampleMatch.Success) {
            $depthIfMatch = [regex]::Match($content.Substring($depthSampleMatch.Index + $depthSampleMatch.Length), 'if\s*\(')
            if ($depthIfMatch.Success) {
                $depthIfIndex = $depthSampleMatch.Index + $depthSampleMatch.Length + $depthIfMatch.Index
                $depthIfPrefix = $content.Substring($depthIfIndex, [Math]::Min(64, $content.Length - $depthIfIndex))
                if ($depthIfPrefix -notmatch 'if\s*\(\s*CUSTOM_SHARPENING_TYPE\s*==\s*0\s*&&') {
                    $insertAt = $content.IndexOf('(', $depthIfIndex) + 1
                    $content = $content.Substring(0, $insertAt) + 'CUSTOM_SHARPENING_TYPE == 0 && ' + $content.Substring($insertAt)
                }
            }
        }

        $content = Add-LineAnnotation -Text $content -Newline $newline -Name 'FinalVanillaSharpeningGate' `
            -Version $finalControlsPatchVersion -LineNeedle 'if (CUSTOM_SHARPENING_TYPE == 0 && ' `
            -Description ('The native depth-qualified sharpener would otherwise run before the RenoDX custom sharpening pass and apply two sharpeners to the same pixel. ' +
                'This block adds CUSTOM_SHARPENING_TYPE == 0 to the unchanged native depth condition so the native path runs only when custom sharpening is not selected. ' +
                'CUSTOM_SHARPENING_TYPE resolves to 0 when RenoDX is Off, restoring the native condition.')
    }

    if (-not $isFused -and $isHdr -and -not $content.Contains('* CUSTOM_SHARPENING) +')) {
        $content = [regex]::Replace($content, '(?m)^(\s*_\d+\s*=\s*\(\(_\d+\s*\*\s*_\d+)(\)\s*\+\s*_\d+\);)', '$1 * CUSTOM_SHARPENING$2', 3)

        $content = Add-RunAnnotation -Text $content -Newline $newline -Name 'FinalSharpeningStrength' `
            -Version $finalControlsPatchVersion -LineNeedle '* CUSTOM_SHARPENING) + ' `
            -Description ('The native HDR final computes one sharpening delta per RGB channel and adds each delta back to its original center color. ' +
                'This block multiplies only those three native deltas by CUSTOM_SHARPENING while preserving the native center additions and channel order. ' +
                'CUSTOM_SHARPENING resolves to 1 when RenoDX is Off, restoring all three native equations.')
    }

    if (-not $isFused -and $isHdr -and -not $content.Contains('Patch: RemoveFinalSrgbDecodeHDR')) {
        $srgbDecodePattern = '(?m)^(?<indent>\s*)(?<decl>float\s+)?(?<out>_\d+)\s*=\s*\((?<scale>_\d+)\s*\*\s*select\(\((?<in>_\d+)\s*<\s*' +
            $cSrgbCutoff + '\),\s*\(\k<in>\s*\*\s*' + $cSrgbSlope + '\),\s*exp2\(log2\(\(\k<in>\s*\+\s*' +
            $cSrgbOffset + '\)\s*\*\s*' + $cSrgbScale + '\)\s*\*\s*' + $cSrgbGamma + '\)\)\)\s*\+\s*(?<offset>_\d+)\s*;\r?$'
        $srgbDecodeMatches = @([regex]::Matches($content, $srgbDecodePattern))
        if ($srgbDecodeMatches.Count -ge 3) {
            $firstSrgbDecode = $srgbDecodeMatches[0]
            $thirdSrgbDecode = $srgbDecodeMatches[2]
            $replacementLines = @(
                "$($firstSrgbDecode.Groups['indent'].Value)// RenoDX: >>> [Patch: RemoveFinalSrgbDecodeHDR] [Version: $finalControlsPatchVersion]",
                "$($firstSrgbDecode.Groups['indent'].Value)// Description: The paired HDR tonemap writer stores raw PQ, so the final pass must blend those three channels directly instead of applying vanilla's sRGB decode and corrupting the coordinated intermediate.",
                "$($srgbDecodeMatches[0].Groups['indent'].Value)$($srgbDecodeMatches[0].Groups['decl'].Value)$($srgbDecodeMatches[0].Groups['out'].Value) = ($($srgbDecodeMatches[0].Groups['scale'].Value) * $($srgbDecodeMatches[0].Groups['in'].Value)) + $($srgbDecodeMatches[0].Groups['offset'].Value);",
                "$($srgbDecodeMatches[1].Groups['indent'].Value)$($srgbDecodeMatches[1].Groups['decl'].Value)$($srgbDecodeMatches[1].Groups['out'].Value) = ($($srgbDecodeMatches[1].Groups['scale'].Value) * $($srgbDecodeMatches[1].Groups['in'].Value)) + $($srgbDecodeMatches[1].Groups['offset'].Value);",
                "$($srgbDecodeMatches[2].Groups['indent'].Value)$($srgbDecodeMatches[2].Groups['decl'].Value)$($srgbDecodeMatches[2].Groups['out'].Value) = ($($srgbDecodeMatches[2].Groups['scale'].Value) * $($srgbDecodeMatches[2].Groups['in'].Value)) + $($srgbDecodeMatches[2].Groups['offset'].Value);",
                "$($thirdSrgbDecode.Groups['indent'].Value)// RenoDX: <<< [Patch: RemoveFinalSrgbDecodeHDR]"
            )
            $replacement = $replacementLines -join $newline
            $replaceStart = $firstSrgbDecode.Index
            $replaceEnd = $thirdSrgbDecode.Index + $thirdSrgbDecode.Length
            $content = $content.Substring(0, $replaceStart) + $replacement + $content.Substring($replaceEnd)
        } else {
            $missing = $true
        }
    }

    if (-not $isFused -and -not $isHdr -and $hasDepth -and -not $content.Contains('FinalSharpeningStrength')) {
        $depthSampleMatch = [regex]::Match($content, '__3__36__0__0__g_depth\.Sample\([^;]+;')
        $depthMatch = $null
        if ($depthSampleMatch.Success) {
            $depthMatch = [regex]::Match($content.Substring($depthSampleMatch.Index + $depthSampleMatch.Length), 'if\s*\(')
            if ($depthMatch.Success) {
                $depthMatch = [regex]::Match($content, 'if\s*\(', [System.Text.RegularExpressions.RegexOptions]::None, [timespan]::FromSeconds(1))
                foreach ($candidateDepthMatch in [regex]::Matches($content, 'if\s*\(')) {
                    if ($candidateDepthMatch.Index -gt $depthSampleMatch.Index) {
                        $depthMatch = $candidateDepthMatch
                        break
                    }
                }
            }
        }

        if ($null -ne $depthMatch -and $depthMatch.Success) {
            $depthEnd = Find-IfElseEnd -Text $content -IfMatch $depthMatch
            if ($depthEnd -gt 0) {
                $depthIfOpenBrace = $content.IndexOf('{', $depthMatch.Index)
                $depthIfEnd = Find-BlockEnd -Text $content -OpenBraceIndex $depthIfOpenBrace
                $depthBlock = $content.Substring($depthMatch.Index, $depthEnd - $depthMatch.Index)
                $elseAssigns = [regex]::Matches($depthBlock, '(?m)^\s*(_\d+)\s*=\s*(_\d+)\s*;')
                if ($depthIfEnd -gt 0 -and $elseAssigns.Count -ge 3) {
                    $depthIfCloseLineStart = Find-LineStart -Text $content -Index ($depthIfEnd - 1) -Newline $newline
                    $out1 = $elseAssigns[$elseAssigns.Count - 3].Groups[1].Value
                    $in1 = $elseAssigns[$elseAssigns.Count - 3].Groups[2].Value
                    $out2 = $elseAssigns[$elseAssigns.Count - 2].Groups[1].Value
                    $in2 = $elseAssigns[$elseAssigns.Count - 2].Groups[2].Value
                    $out3 = $elseAssigns[$elseAssigns.Count - 1].Groups[1].Value
                    $in3 = $elseAssigns[$elseAssigns.Count - 1].Groups[2].Value
                    $sharpenBlock = $newline +
                        "    // RenoDX: >>> [Patch: FinalSharpeningStrength] [Version: $finalControlsPatchVersion]$newline" +
                        "    // Description: Scales only the native per-channel sharpening deltas before they are added back to the unchanged center color. The effective strength is 1 when RenoDX is Off, restoring the native equations.$newline" +
                        "    $out1 = lerp($in1, $out1, CUSTOM_SHARPENING);$newline" +
                        "    $out2 = lerp($in2, $out2, CUSTOM_SHARPENING);$newline" +
                        "    $out3 = lerp($in3, $out3, CUSTOM_SHARPENING);$newline" +
                        "    // RenoDX: <<< [Patch: FinalSharpeningStrength]$newline"
                    $content = $content.Substring(0, $depthIfCloseLineStart) + $sharpenBlock + $content.Substring($depthIfCloseLineStart)
                } else {
                    $missing = $true
                }
            } else {
                $missing = $true
            }
        }
    }

    # ---- Fused permutations: replace the inlined vanilla tonemap ----
    if ($isFused -and -not $content.Contains('[Patch: FusedFinalTonemapReplace]')) {
        $failReason = $null

        # Segment start: the first CDL grade line (AP1-style input matrix R row).
        $gradeIdx = -1
        $gradeConstMatch = [regex]::Match($content, $cGradeR)
        if ($gradeConstMatch.Success) { $gradeIdx = $gradeConstMatch.Index } else { $failReason = 'grade constant not found' }

        $fadeMatch = $null
        if ($null -eq $failReason) {
            foreach ($m in [regex]::Matches($content, '(?m)^(?<ind>[ \t]*)(?<k>_\d+) = 1\.0f - abs\(_etcParams\.w\);')) {
                if ($m.Index -gt $gradeIdx) { $fadeMatch = $m; break }
            }
            if ($null -eq $fadeMatch) { $failReason = 'fade lead-in not found after grade' }
        }

        $fadeAdd = $null
        $outVars = $null
        $washIdx = -1
        if ($null -eq $failReason) {
            $washIdx = $content.IndexOf('if (_colorGradingParams.w > 0.0f) {', $fadeMatch.Index, [System.StringComparison]::Ordinal)
            if ($washIdx -lt 0) { $failReason = 'wash branch not found after fade' }
        }

        if ($null -eq $failReason) {
            $fadeRegion = $content.Substring($fadeMatch.Index, $washIdx - $fadeMatch.Index)
            $addMatch = [regex]::Match($fadeRegion, '(?m)^[ \t]*(_\d+) = saturate\(_etcParams\.w\);')
            if ($addMatch.Success) { $fadeAdd = $addMatch.Groups[1].Value } else { $failReason = 'fade saturate line not found' }

            if ($null -eq $failReason) {
                $keepVar = $fadeMatch.Groups['k'].Value
                $outMatches = @([regex]::Matches($fadeRegion, '(?m)^[ \t]*(_\d+) = \([^\r\n]*' + [regex]::Escape($keepVar) + '[^\r\n]*\) \+ ' + [regex]::Escape($fadeAdd) + ';'))
                if ($outMatches.Count -eq 3) {
                    $outVars = @($outMatches[0].Groups[1].Value, $outMatches[1].Groups[1].Value, $outMatches[2].Groups[1].Value)
                } else {
                    $failReason = "expected 3 fade output lines, found $($outMatches.Count)"
                }
            }
        }

        $inR = $null; $inG = $null; $inB = $null
        $segStart = -1
        if ($null -eq $failReason) {
            $segStart = Find-LineStart -Text $content -Index $gradeIdx -Newline $newline
            $segText = $content.Substring($segStart, $washIdx - $segStart)
            $rM = [regex]::Match($segText, '\((_\d+) \* ' + $cGradeR + '\)')
            $gM = [regex]::Match($segText, '\((_\d+) \* ' + $cGradeG + '\)')
            $bM = [regex]::Match($segText, '\((_\d+) \* ' + $cGradeB + '\)')
            if ($rM.Success -and $gM.Success -and $bM.Success) {
                $inR = $rM.Groups[1].Value; $inG = $gM.Groups[1].Value; $inB = $bM.Groups[1].Value
            } else {
                $failReason = 'tonemap input trio not found in grade lines'
            }
        }

        $sceneRes = $null
        $clampSampler = $null
        if ($null -eq $failReason) {
            $resM = [regex]::Match($content, '(__\d+__\d+__\d+__\d+__g_sceneColor)\b')
            $clampM = [regex]::Match($content, '(__\d+__\d+__\d+__\d+__g_staticBilinearClamp)\b')
            if ($resM.Success -and $clampM.Success) {
                $sceneRes = $resM.Groups[1].Value
                $clampSampler = $clampM.Groups[1].Value
            } else {
                $failReason = 'scene color resource or clamp sampler not found'
            }
        }

        if ($null -eq $failReason) {
            $washLineStart = Find-LineStart -Text $content -Index $washIdx -Newline $newline
            $removedSegment = $content.Substring($segStart, $washLineStart - $segStart)
            $ind = $fadeMatch.Groups['ind'].Value
            $keepVar = $fadeMatch.Groups['k'].Value

            $emitted =
                "$ind// RenoDX: >>> [Patch: FusedFinalTonemapReplace] [Version: $patchVersion]$newline" +
                "$ind// Description: This standalone-final permutation inlines the vanilla tonemap pipeline directly in the final pass and runs it unconditionally on the raw scene color, so an unreplaced permutation renders the whole screen with the vanilla look whenever the game selects it. This block replaces everything from the color-matrix grade through the per-permutation tone curve and output transform with the shared TonemapReplacer. The vanilla screen fade that was fused with the curve output is re-emitted below so the untouched downstream suite - wash, user brightness and contrast, user gamma, color-blind matrix where present, vignette, letterbox, and the alpha passthrough - keeps running unchanged on the replaced color.$newline" +
                "$ind" + "float3 _rndx_tonemapped_color = TonemapReplacer(float3($inR, $inG, $inB));$newline" +
                "$ind// RenoDX: <<< [Patch: FusedFinalTonemapReplace]$newline" +
                "$ind// RenoDX: >>> [Patch: FusedFinalSharpening] [Version: $patchVersion]$newline" +
                "$ind// Description: The standalone final pass is where RenoDX RCAS sharpening runs, but this fused permutation tonemaps inside the final pass itself, so no completed final-color texture exists to sample neighbor pixels from. Reconstruct the four RCAS neighbor taps by sampling the raw scene color one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve. The fused vanilla sharpener, where this permutation carried one, was removed together with the replaced tonemap segment above.$newline" +
                "$ind" + "if (CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {$newline" +
                "$ind  uint _rndx_scene_w, _rndx_scene_h;$newline" +
                "$ind  $sceneRes.GetDimensions(_rndx_scene_w, _rndx_scene_h);$newline" +
                "$ind  float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);$newline" +
                "$ind  float3 _rndx_tap_b = TonemapReplacer($sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb);$newline" +
                "$ind  float3 _rndx_tap_d = TonemapReplacer($sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb);$newline" +
                "$ind  float3 _rndx_tap_f = TonemapReplacer($sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb);$newline" +
                "$ind  float3 _rndx_tap_h = TonemapReplacer($sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb);$newline" +
                "$ind  _rndx_tonemapped_color = ApplyRCASTaps(_rndx_tonemapped_color, _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);$newline" +
                "$ind}$newline" +
                "$ind// RenoDX: <<< [Patch: FusedFinalSharpening]$newline" +
                "$ind// RenoDX: >>> [Patch: FusedFinalFilmGrain] [Version: $patchVersion]$newline" +
                "$ind// Description: The standalone final pass is where RenoDX custom film grain runs. This fused permutation is the visible final output whenever it draws, so apply the custom film grain to the tonemapped color here, in the same pipeline position the slim standalone finals apply it. The vanilla film grain earlier in this shader stays under the CustomFilmGrainGate patch and only runs when custom grain is off.$newline" +
                "$ind" + "if (CUSTOM_FILM_GRAIN_TYPE != 0) {$newline" +
                "$ind  _rndx_tonemapped_color = renodx::effects::ApplyFilmGrain(_rndx_tonemapped_color, TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);$newline" +
                "$ind}$newline" +
                "$ind// RenoDX: <<< [Patch: FusedFinalFilmGrain]$newline" +
                "$ind// RenoDX: >>> [Patch: FusedFinalFadeRestore] [Version: $patchVersion]$newline" +
                "$ind// Description: Re-emits the vanilla screen-fade lines that were fused with the replaced tone curve so the downstream final-output suite consumes the replaced color through the original variables.$newline" +
                "$ind$keepVar = 1.0f - abs(_etcParams.w);$newline" +
                "$ind$fadeAdd = saturate(_etcParams.w);$newline" +
                "$ind$($outVars[0]) = ($keepVar * saturate(_rndx_tonemapped_color.x)) + $fadeAdd;$newline" +
                "$ind$($outVars[1]) = ($keepVar * saturate(_rndx_tonemapped_color.y)) + $fadeAdd;$newline" +
                "$ind$($outVars[2]) = ($keepVar * saturate(_rndx_tonemapped_color.z)) + $fadeAdd;$newline" +
                "$ind// RenoDX: <<< [Patch: FusedFinalFadeRestore]$newline"

            $content = $content.Substring(0, $segStart) + $emitted + $content.Substring($washLineStart)
            $fusedTonemapReplaced++

            # Removed temporaries must not be read later; declarations are hoisted,
            # so a stale read would compile but break.
            $removedVars = New-Object System.Collections.Generic.HashSet[string]
            foreach ($am in [regex]::Matches($removedSegment, '(?m)^\s*(_\d+)\s*=')) {
                [void]$removedVars.Add($am.Groups[1].Value)
            }
            foreach ($v in @($keepVar, $fadeAdd) + $outVars) { [void]$removedVars.Remove($v) }
            $tailContent = $content.Substring($segStart + $emitted.Length)
            foreach ($rv in $removedVars) {
                if ([regex]::IsMatch($tailContent, "(?<![\w])$([regex]::Escape($rv))(?![\d])")) {
                    $curveVarLeaks.Add("$($file.Name): $rv")
                }
            }
        } else {
            $fusedSegmentFailed.Add("$($file.Name): $failReason")
        }
    }

    if (-not $content.Contains('CUSTOM_VIGNETTE')) {
        $content = [regex]::Replace($content, '(_localToneMappingParams\.w[\s\S]*?saturate\(1\.0f - \(\(_\d+ \* _postProcessParams\.x)(\) \* dot\(float2)', '$1 * CUSTOM_VIGNETTE$2', 1)
    }

    $content = Add-LineAnnotation -Text $content -Newline $newline -Name 'FinalVignetteStrength' `
        -Version $finalControlsPatchVersion -LineNeedle '* CUSTOM_VIGNETTE) * dot(float2' `
        -Description ('The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. ' +
            'This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. ' +
            'CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.')

    if (-not $content.Contains('FinalizePostProcess')) {
        $targetWMatch = [regex]::Match($content, '(?m)^\s*SV_Target\.w\s*=\s*[^;]+;')
        if ($targetWMatch.Success) {
            if ($isHdr) {
                $finalizeBlock = $newline + $newline +
                    "  // RenoDX: >>> [Patch: FinalizePostProcessHDR] [Version: $patchVersion]$newline" +
                    "  // Description: Runs the shared HDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.$newline" +
                    "  SV_Target.xyz = FinalizeHDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);$newline" +
                    "  // RenoDX: <<< [Patch: FinalizePostProcessHDR]"
            } else {
                $finalizeBlock = $newline + $newline +
                    "  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: $patchVersion]$newline" +
                    "  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.$newline" +
                    "  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);$newline" +
                    "  // RenoDX: <<< [Patch: FinalizePostProcessSDR]"
            }
            $insertAt = $targetWMatch.Index + $targetWMatch.Length
            $content = $content.Substring(0, $insertAt) + $finalizeBlock + $content.Substring($insertAt)
        } else {
            $missing = $true
        }
    }

    $consumer = if ($isFused) { 'the fused final grading path' } else { 'the standalone final pass' }
    $content = Add-TonemapDependencyAnnotations -Text $content -Newline $newline `
        -Version $finalControlsPatchVersion -Consumer $consumer
    if ($content -notmatch '\[Patch: RenoDXDependencyBindings\]') {
        $bindingsAnnotationMissing.Add($file.Name)
    }

    if ($missing) {
        $missingPattern.Add($file.Name)
    }

    if ($content -ne $originalContent) {
        if (-not $WhatIf) {
            [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        }
        $updatedFiles.Add($file.Name)
    }
}

Write-Output "TOTAL_FILES=$($files.Count)"
Write-Output "UPDATED_FILES=$($updatedFiles.Count)"
Write-Output "STAGED_FROM_NATIVE=$($stagedFiles.Count)"
Write-Output "SLIM_FILES=$slimCount"
Write-Output "FUSED_FILES=$fusedCount"
Write-Output "FUSED_TONEMAP_REPLACED=$fusedTonemapReplaced"

if ($nativeMissing.Count -gt 0) {
    Write-Output "NATIVE_MISSING=$($nativeMissing.Count)"
    $nativeMissing | ForEach-Object { Write-Output ("  " + $_) }
}

if ($missingPattern.Count -gt 0) {
    Write-Output "MISSING_PATTERN=$($missingPattern.Count)"
    $missingPattern | ForEach-Object { Write-Output ("  " + $_) }
}

if ($fusedSegmentFailed.Count -gt 0) {
    Write-Output "FUSED_SEGMENT_FAILED=$($fusedSegmentFailed.Count)"
    $fusedSegmentFailed | ForEach-Object { Write-Output ("  " + $_) }
}

if ($missingCBufferPattern.Count -gt 0) {
    Write-Output "MISSING_CBUFFER_PATTERN=$($missingCBufferPattern.Count)"
    $missingCBufferPattern | ForEach-Object { Write-Output ("  " + $_) }
}

if ($curveVarLeaks.Count -gt 0) {
    Write-Output "CURVE_VAR_LEAKS=$($curveVarLeaks.Count)"
    $curveVarLeaks | ForEach-Object { Write-Output ("  " + $_) }
}

if ($bindingsAnnotationMissing.Count -gt 0) {
    Write-Output "BINDINGS_ANNOTATION_MISSING=$($bindingsAnnotationMissing.Count)"
    $bindingsAnnotationMissing | ForEach-Object { Write-Output ("  " + $_) }
}
