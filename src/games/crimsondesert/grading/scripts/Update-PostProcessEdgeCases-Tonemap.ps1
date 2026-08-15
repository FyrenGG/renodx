# Regenerates the RenoDX treatment for the PostProcessMaterial tonemap family
# (grading/tonemap-materials). Stages, in order, per file:
#   0. Optional: re-stage the fresh native decompile over the tree file (-NativeFolder,
#      matched by the 0x hash in the file name) so the run is reproducible from
#      unpatched decompiler output.
#   1. Include arrangement: tonemap.hlsli defines/include after SceneConstantBuffer,
#      plus '#if 0' wraps for the cbuffers tonemap.hlsli provides.
#   2. Tonemap replacement: replaces only the vanilla curve segment (grade, log-space
#      tone curve, night tone, output matrix) with TonemapReplacer and PRESERVES the
#      vanilla _etcParams.z == 0 final-output suite (screen fade, wash, user image
#      adjust, color-blind matrix). Falls back to whole-branch replacement only when
#      the branch has no such suite. If a suite exists but cannot be parsed, the file
#      is left unpatched and reported (never silently consumed).
#   3. SDR permutations only (no ST.2084/PQ tail constant 78.84375): scale the native
#      vignette by CUSTOM_VIGNETTE and run FinalizeSDR before the SV_Target writes,
#      both gated on CUSTOM_BASIC_POSTPROCESS_FINAL and _etcParams.z == 0 so they only
#      act when the draw owns the visible final output.
#   4. Main Uber composites (auto-detected: SDR permutations that actually load
#      _uiQuickSlotEffect, _detectModeG, _chromaticAberrationRatio and
#      _statusVignetteRatio1; the game ships each of these shaders in more than one
#      build, so more than one SDR match is expected): chromatic aberration scaling, RCAS sharpening with
#      reconstructed g_sceneColor taps, and film grain.
# All emitted code uses RenoDX >>>/<<< annotation blocks. Every skipped pattern is
# reported at the end; treat any MISSING/FAILED list as a stop-and-investigate signal.
# Decompiler note: current output hoists declarations, so no regex here may require a
# 'float'/'bool' prefix before SSA temporaries.
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
    $Folder = Join-Path $scriptDir '..\tonemap-materials'
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

$files = @(Get-ChildItem -LiteralPath $folderPath -File -Filter '*.hlsl')
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

$patchVersion = '1.13.00'
# The dependency-binding arrangement is a separately authored patch and carries its own
# version; it is not a variant of the tonemap treatment above.
$bindingsPatchVersion = '1.16.00'

function Find-MatchingBrace {
    param([string]$Text, [int]$OpenIndex)
    $depth = 0
    for ($i = $OpenIndex; $i -lt $Text.Length; $i++) {
        $ch = $Text[$i]
        if ($ch -eq '{') {
            $depth++
        } elseif ($ch -eq '}') {
            $depth--
            if ($depth -eq 0) { return $i }
        }
    }
    return -1
}

function Get-LineStart {
    param([string]$Text, [int]$Index)
    $ls = $Text.LastIndexOf("`n", $Index)
    if ($ls -lt 0) { return 0 }
    return $ls + 1
}

# First var assigned from a WaveReadLaneFirst load of the given bindless field.
function Find-BindlessLoadVar {
    param([string]$Text, [string]$FieldName)
    $m = [regex]::Match($Text, '(?m)^[ \t]*(_\d+) = [^\r\n]*WaveReadLaneFirst\([^\r\n]*\.' + [regex]::Escape($FieldName) + '\);')
    if ($m.Success) { return $m.Groups[1].Value }
    return $null
}

# The _enableChromaticAberration product for a raw load var. Handles both the split
# form (separate product statement) and the fused form (multiply inside the load line).
# The uint-to-float cast chain is matched loosely because its parenthesisation is a
# decompiler formatting choice that differs between decompiler builds
# ('((float)((uint)(uint)(x)))' vs '((float)((uint)((uint)(x))))'); the operands, not
# the bracket count, are what identify the statement.
function Find-EnableCAProductVar {
    param([string]$Text, [string]$RawVar)
    if ($null -eq $RawVar) { return $null }
    $m = [regex]::Match($Text, '(?m)^[ \t]*(_\d+) = \(\(float\)[\(\)uint ]*\(_enableChromaticAberration\)\)*\) \* ' + [regex]::Escape($RawVar) + ';')
    if ($m.Success) { return $m.Groups[1].Value }
    $loadLine = [regex]::Match($Text, '(?m)^[ \t]*' + [regex]::Escape($RawVar) + ' = [^\r\n]*;')
    if ($loadLine.Success -and $loadLine.Value.Contains('_enableChromaticAberration')) { return $RawVar }
    return $null
}

$updatedFiles = New-Object System.Collections.Generic.List[string]
$stagedFiles = New-Object System.Collections.Generic.List[string]
$nativeMissing = New-Object System.Collections.Generic.List[string]
$missingCBufferPattern = New-Object System.Collections.Generic.List[string]
$missingTonemapPattern = New-Object System.Collections.Generic.List[string]
$suiteParseFailed = New-Object System.Collections.Generic.List[string]
$vignettePatchMissing = New-Object System.Collections.Generic.List[string]
$finalizePatchMissing = New-Object System.Collections.Generic.List[string]
$curveVarLeaks = New-Object System.Collections.Generic.List[string]
$compositeSdrFiles = New-Object System.Collections.Generic.List[string]
$compositeIssues = New-Object System.Collections.Generic.List[string]
$bindingsAnnotationMissing = New-Object System.Collections.Generic.List[string]

$sdrCount = 0
$hdrCount = 0
$curveReplaced = 0
$fullBodyReplaced = 0
$vignettePatched = 0
$finalizePatched = 0
$caPatched = 0
$sharpenPatched = 0
$grainPatched = 0

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName)

    # ---- Stage 0: optional native re-staging by file-name hash ----
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

    $isHdr = $content.Contains('78.84375')
    if ($isHdr) { $hdrCount++ } else { $sdrCount++ }

    # Main Uber composite detection by actual field usage (the shared bindless struct
    # declaration lists every field, so declaration-level matches are meaningless).
    $isComposite = (-not $isHdr) -and
        $content.Contains('_uiQuickSlotEffect)') -and
        $content.Contains('_detectModeG)') -and
        $content.Contains('_chromaticAberrationRatio)') -and
        $content.Contains('_statusVignetteRatio1)')
    if ($isComposite) { $compositeSdrFiles.Add($file.Name) }

    # ---- Stage 1: include arrangement + cbuffer wraps ----
    if ($content -notmatch '(?m)^#include\s+"\.\./tonemap\.hlsli"\r?$') {
        $includeBlock = '#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1' + $newline +
            '#define RENODX_TONEMAP_SCENE_TIME_W _time.w' + $newline +
            '#include "../tonemap.hlsli"' + $newline + $newline

        $sceneMatch = [regex]::Match($content, '(?s)cbuffer __3__35__0__0__SceneConstantBuffer : register\(b(?:15|16), space35\) \{.*?\};')
        if ($sceneMatch.Success) {
            $insertAt = $sceneMatch.Index + $sceneMatch.Length
            $content = $content.Substring(0, $insertAt) + $newline + $newline + $includeBlock + $content.Substring($insertAt)
        } else {
            $content = '#include "../tonemap.hlsli"' + $newline + $newline + $content
        }
    }

    $wrapCBuffer = {
        param(
            [string]$text,
            [string]$cbufferPattern
        )

        $cbufferMatch = [regex]::Match($text, $cbufferPattern)
        if ($cbufferMatch.Success) {
            $beforeCBuffer = $text.Substring(0, $cbufferMatch.Index)
            $lastProvidedIf = $beforeCBuffer.LastIndexOf('#if 0 // Provided by tonemap.hlsli', [System.StringComparison]::Ordinal)
            $lastEndIf = $beforeCBuffer.LastIndexOf('#endif', [System.StringComparison]::Ordinal)
            $nextEndIf = $text.IndexOf('#endif', $cbufferMatch.Index + $cbufferMatch.Length, [System.StringComparison]::Ordinal)

            if ($lastProvidedIf -gt $lastEndIf -and $nextEndIf -ge 0) {
                return [pscustomobject]@{ Content = $text; Found = $true }
            }
        }

        $wrappedPattern = "(?s)#if 0 // Provided by tonemap\\.hlsli.*?$cbufferPattern.*?#endif"
        if ([regex]::IsMatch($text, $wrappedPattern)) {
            return [pscustomobject]@{ Content = $text; Found = $true }
        }

        if ($cbufferMatch.Success) {
            $updated = [regex]::Replace(
                $text,
                $cbufferPattern,
                {
                    param($m)
                    "#if 0 // Provided by tonemap.hlsli$newline$($m.Value)$newline#endif"
                },
                1
            )

            return [pscustomobject]@{ Content = $updated; Found = $true }
        }

        return [pscustomobject]@{ Content = $text; Found = $false }
    }

    $sceneCBufferPattern = '(?s)cbuffer __3__35__0__0__SceneConstantBuffer : register\(b(?:15|16), space35\) \{.*?\};'
    $exposureCBufferPattern = '(?s)cbuffer __3__35__0__0__ExposureConstantBuffer : register\(b(?:30|31), space35\) \{.*?\};'
    $globalPushConstantsPattern = '(?s)cbuffer __3__1__0__0__GlobalPushConstants : register\(b0, space1\) \{.*?\};'
    $colorBlindCBufferPattern = '(?s)cbuffer __3__35__0__0__ColorBlindConstantBuffer : register\(b(?:46|47), space35\) \{.*?\};'

    $missingAnyCBuffer = $false

    if (-not [regex]::IsMatch($content, $sceneCBufferPattern)) {
        $missingAnyCBuffer = $true
    }

    $exposureWrapResult = & $wrapCBuffer $content $exposureCBufferPattern
    $content = $exposureWrapResult.Content
    if (-not $exposureWrapResult.Found) {
        $missingAnyCBuffer = $true
    }

    $globalPushWrapResult = & $wrapCBuffer $content $globalPushConstantsPattern
    $content = $globalPushWrapResult.Content
    if (-not $globalPushWrapResult.Found) {
        $missingAnyCBuffer = $true
    }

    $colorBlindWrapResult = & $wrapCBuffer $content $colorBlindCBufferPattern
    $content = $colorBlindWrapResult.Content
    if (-not $colorBlindWrapResult.Found) {
        $missingAnyCBuffer = $true
    }

    if ($missingAnyCBuffer) {
        $missingCBufferPattern.Add($file.Name)
    }

    # ---- Stage 2: tonemap branch replacement (suite-preserving) ----
    $hasTonemapReplacement = [regex]::IsMatch($content, 'TonemapReplacer\s*\(\s*float3')

    $conditionMatches = New-Object System.Collections.Generic.List[object]
    foreach ($directMatch in [regex]::Matches($content, 'if\s*\(\s*_localToneMappingParams\.w\s*>\s*0\.0f\s*\)\s*\{')) {
        $conditionMatches.Add($directMatch)
    }

    foreach ($flagMatch in [regex]::Matches($content, '(?m)^\s*(?:bool\s+)?(_\d+)\s*=\s*\(\s*_localToneMappingParams\.w\s*>\s*0\.0f\s*\)\s*;')) {
        $escapedFlag = [regex]::Escape($flagMatch.Groups[1].Value)
        foreach ($flagIfMatch in [regex]::Matches($content, "if\s*\(\s*$escapedFlag\s*\)\s*\{")) {
            $conditionMatches.Add($flagIfMatch)
        }
    }

    $conditionMatch = $null
    if ($conditionMatches.Count -gt 0) {
        $conditionMatch = $conditionMatches |
            Sort-Object -Property Index |
            Select-Object -Last 1
    }

    # Wiring discovered by the tonemap stage; the composite stage reuses it.
    $tonemapApplied = $false
    $curveOutVars = $null   # vars the vanilla curve assigned (feed the z==0 suite)
    $branchOutVars = $null  # vars carrying color out of the tonemap branch

    if ($null -ne $conditionMatch -and -not $hasTonemapReplacement) {
        $start = $conditionMatch.Index
        $bodyStart = $conditionMatch.Index + $conditionMatch.Length
        $ifBodyEnd = Find-MatchingBrace $content ($bodyStart - 1)

        $pairs = New-Object System.Collections.Generic.List[object]
        $elseParsed = $false

        if ($ifBodyEnd -ge 0) {
            $cursor = $ifBodyEnd + 1
            while ($cursor -lt $content.Length -and [char]::IsWhiteSpace($content[$cursor])) {
                $cursor++
            }

            if ($cursor + 4 -le $content.Length -and $content.Substring($cursor, 4) -eq 'else') {
                $cursor += 4
                while ($cursor -lt $content.Length -and [char]::IsWhiteSpace($content[$cursor])) {
                    $cursor++
                }
                if ($cursor -lt $content.Length -and $content[$cursor] -eq '{') {
                    $elseClose = Find-MatchingBrace $content $cursor
                    if ($elseClose -ge 0) {
                        $elseParsed = $true
                        $elseBody = $content.Substring($cursor + 1, $elseClose - $cursor - 1)
                        $elseLines = $elseBody -split '\r?\n'
                        $elseDepth = 0
                        foreach ($line in $elseLines) {
                            if ($elseDepth -eq 0) {
                                $m = [regex]::Match($line, '^\s*(_\d+)\s*=\s*(.+?)\s*;\s*(?://[^\r\n]*)?$')
                                if ($m.Success) {
                                    $pairs.Add([pscustomobject]@{ Out = $m.Groups[1].Value; In = $m.Groups[2].Value })
                                }
                            }
                            $elseDepth += ([regex]::Matches($line, '\{')).Count - ([regex]::Matches($line, '\}')).Count
                        }
                    }
                }
            }
        }

        # Fallback: if top-level else mapping is not recoverable, infer RGB inputs from
        # the three tonemap shaping lines (slope/offset/power), e.g. _190/_191/_192.
        if ($elseParsed -and $pairs.Count -lt 3) {
            $ifBody = $content.Substring($bodyStart, $ifBodyEnd - $bodyStart)
            $ifLines = $ifBody -split '\r?\n'

            $assignedNames = New-Object System.Collections.Generic.HashSet[string]
            foreach ($line in $ifLines) {
                $assignMatch = [regex]::Match($line, '^\s*(?:(?:precise|min16float|float|half|int|uint|bool)\s+)?(_\d+)\s*=')
                if ($assignMatch.Success) {
                    [void]$assignedNames.Add($assignMatch.Groups[1].Value)
                }
            }

            $tonemapExprVars = New-Object System.Collections.Generic.List[object]
            foreach ($line in $ifLines) {
                $toneMatch = [regex]::Match($line, '^\s*(?:(?:precise|min16float|float|half|int|uint|bool)\s+)?(_\d+)\s*=\s*(.+?)\s*;\s*$')
                if (-not $toneMatch.Success) {
                    continue
                }

                $rhs = $toneMatch.Groups[2].Value
                if ($rhs -notmatch '_slopeParams\.[xyz]' -or $rhs -notmatch '_offsetParams\.[xyz]' -or $rhs -notmatch '_powerParams\.[xyz]') {
                    continue
                }

                $vars = New-Object System.Collections.Generic.List[string]
                foreach ($vm in [regex]::Matches($rhs, '_\d+')) {
                    $v = $vm.Value
                    if (-not $assignedNames.Contains($v) -and -not $vars.Contains($v)) {
                        $vars.Add($v)
                    }
                }

                if ($vars.Count -gt 0) {
                    $tonemapExprVars.Add($vars)
                }
            }

            if ($tonemapExprVars.Count -ge 3) {
                $common = New-Object System.Collections.Generic.List[string]
                foreach ($v in $tonemapExprVars[0]) {
                    $inAll = $true
                    for ($ix = 1; $ix -lt $tonemapExprVars.Count; $ix++) {
                        if (-not $tonemapExprVars[$ix].Contains($v)) {
                            $inAll = $false
                            break
                        }
                    }

                    if ($inAll -and -not $common.Contains($v)) {
                        $common.Add($v)
                    }
                }

                if ($common.Count -ge 3 -and $pairs.Count -ge 3) {
                    # Keep else-derived output wiring, replace only inferred input vars.
                    $pairs[0].In = $common[0]
                    $pairs[1].In = $common[1]
                    $pairs[2].In = $common[2]
                }
            }
        }

        if ($pairs.Count -ge 3) {
            # Normalize inputs: strip outer scalar multiply/divide to get raw variable.
            # e.g. (_106 * 0.015625f) -> _106
            $scalarMulPat = [regex]'^[\(\s]*(_\d+)\s*[*/]\s*[\d.]+f?[\)\s]*$'
            $normalizeIn = {
                param($expr)
                $nm = $scalarMulPat.Match($expr.Trim())
                if ($nm.Success) { $nm.Groups[1].Value } else { $expr }
            }

            $in1 = & $normalizeIn $pairs[0].In
            $in2 = & $normalizeIn $pairs[1].In
            $in3 = & $normalizeIn $pairs[2].In
            $branchOutVars = @($pairs[0].Out, $pairs[1].Out, $pairs[2].Out)

            $ifLineStart = Get-LineStart $content $start
            $ifIndentLength = $start - $ifLineStart
            $ifIndent = if ($ifIndentLength -gt 0) { $content.Substring($ifLineStart, $ifIndentLength) } else { '' }
            $innerIndent = $ifIndent + '  '

            # Look for the vanilla final-output suite nested inside the branch.
            $suiteNeedle = 'if (_etcParams.z == 0.0f) {'
            $nestedIdx = $content.IndexOf($suiteNeedle, $bodyStart, [System.StringComparison]::Ordinal)
            if ($nestedIdx -lt 0 -or $nestedIdx -ge $ifBodyEnd) { $nestedIdx = -1 }

            if ($nestedIdx -ge 0) {
                # Curve outputs = RHS of the suite's else passthrough trio.
                $curveVars = $null
                $suiteLhsVars = $null
                $nestedClose = Find-MatchingBrace $content ($nestedIdx + $suiteNeedle.Length - 1)
                if ($nestedClose -ge 0 -and $nestedClose -lt $ifBodyEnd) {
                    $nc = $nestedClose + 1
                    while ($nc -lt $content.Length -and [char]::IsWhiteSpace($content[$nc])) { $nc++ }
                    if ($nc + 4 -le $content.Length -and $content.Substring($nc, 4) -eq 'else') {
                        $nc += 4
                        while ($nc -lt $content.Length -and [char]::IsWhiteSpace($content[$nc])) { $nc++ }
                        if ($nc -lt $content.Length -and $content[$nc] -eq '{') {
                            $nestedElseClose = Find-MatchingBrace $content $nc
                            if ($nestedElseClose -ge 0 -and $nestedElseClose -le $ifBodyEnd) {
                                $nestedElseBody = $content.Substring($nc + 1, $nestedElseClose - $nc - 1)
                                $trio = New-Object System.Collections.Generic.List[object]
                                foreach ($line in ($nestedElseBody -split '\r?\n')) {
                                    $tm = [regex]::Match($line, '^\s*(_\d+)\s*=\s*(_\d+)\s*;\s*(?://[^\r\n]*)?$')
                                    if ($tm.Success) {
                                        $trio.Add([pscustomobject]@{ Lhs = $tm.Groups[1].Value; Rhs = $tm.Groups[2].Value })
                                    }
                                }
                                if ($trio.Count -eq 3) {
                                    $curveVars = @($trio[0].Rhs, $trio[1].Rhs, $trio[2].Rhs)
                                    $suiteLhsVars = @($trio[0].Lhs, $trio[1].Lhs, $trio[2].Lhs)
                                }
                            }
                        }
                    }
                }

                $suiteWiringOk = $false
                if ($null -ne $curveVars -and $null -ne $suiteLhsVars) {
                    $suiteWiringOk = ($suiteLhsVars[0] -eq $branchOutVars[0]) -and
                        ($suiteLhsVars[1] -eq $branchOutVars[1]) -and
                        ($suiteLhsVars[2] -eq $branchOutVars[2])
                }

                if ($suiteWiringOk) {
                    $nestedLineStart = Get-LineStart $content $nestedIdx
                    $removedSegment = $content.Substring($bodyStart, $nestedLineStart - $bodyStart)

                    $emitted =
                        "$newline$innerIndent// RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: $patchVersion]$newline" +
                        "$innerIndent// Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.$newline" +
                        "$innerIndent" + "float3 _rndx_tonemapped_color = TonemapReplacer(float3($in1, $in2, $in3));$newline" +
                        "$innerIndent$($curveVars[0]) = _rndx_tonemapped_color.x;$newline" +
                        "$innerIndent$($curveVars[1]) = _rndx_tonemapped_color.y;$newline" +
                        "$innerIndent$($curveVars[2]) = _rndx_tonemapped_color.z;$newline" +
                        "$innerIndent// RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]$newline"

                    $content = $content.Substring(0, $bodyStart) + $emitted + $content.Substring($nestedLineStart)
                    $tonemapApplied = $true
                    $curveOutVars = $curveVars
                    $curveReplaced++

                    # Removed curve temporaries must not be read later in the shader;
                    # declarations are hoisted, so a stale read would compile but break.
                    $removedVars = New-Object System.Collections.Generic.HashSet[string]
                    foreach ($am in [regex]::Matches($removedSegment, '(?m)^\s*(_\d+)\s*=')) {
                        [void]$removedVars.Add($am.Groups[1].Value)
                    }
                    foreach ($cv in $curveVars) { [void]$removedVars.Remove($cv) }
                    $tailContent = $content.Substring($bodyStart + $emitted.Length)
                    foreach ($rv in $removedVars) {
                        if ([regex]::IsMatch($tailContent, "(?<![\w])$([regex]::Escape($rv))(?![\d])")) {
                            $curveVarLeaks.Add("$($file.Name): $rv")
                        }
                    }
                } else {
                    # Suite present but not parseable; whole-branch replacement would
                    # silently consume it, so leave the file for investigation instead.
                    $suiteParseFailed.Add($file.Name)
                }
            } else {
                # No suite in this branch: whole-body replacement is exact.
                $newIfBody =
                    "$newline$innerIndent// RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: $patchVersion]$newline" +
                    "$innerIndent// Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline. This permutation's tonemap branch carries no _etcParams.z == 0 final-output suite, so the whole branch body is the vanilla curve (slope/offset/power grade, log-space tone curve, night tone adjustment, output matrix) and is replaced with the shared TonemapReplacer.$newline" +
                    "$innerIndent" + "float3 _rndx_tonemapped_color = TonemapReplacer(float3($in1, $in2, $in3));$newline" +
                    "$innerIndent$($branchOutVars[0]) = _rndx_tonemapped_color.x;$newline" +
                    "$innerIndent$($branchOutVars[1]) = _rndx_tonemapped_color.y;$newline" +
                    "$innerIndent$($branchOutVars[2]) = _rndx_tonemapped_color.z;$newline" +
                    "$innerIndent// RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]$newline" +
                    "$ifIndent"

                $content = $content.Substring(0, $bodyStart) + $newIfBody + $content.Substring($ifBodyEnd)
                $tonemapApplied = $true
                $curveOutVars = $branchOutVars
                $fullBodyReplaced++
            }
        } else {
            $missingTonemapPattern.Add($file.Name)
        }
    } elseif ($null -eq $conditionMatch -and -not $hasTonemapReplacement) {
        $missingTonemapPattern.Add($file.Name)
    }

    # ---- Stage 3: SDR-only final-capable patches ----
    if (-not $isHdr) {
        # Vignette: scale the native strength when this draw owns the visible final.
        if ($content -notmatch '\[Patch: PostProcessMaterialVignette\]') {
            $vigMatch = [regex]::Match($content, '(?m)^(?<ind>[ \t]*)(?<v>_\d+) = saturate\(1\.0f - \(dot\(float2\((?<a>_\d+), (?<b>_\d+)\), float2\(\k<a>, \k<b>\)\) \* saturate\(_etcParams\.y \+ -1\.0f\)\)\);(?<tail>[^\r\n]*)')
            if ($vigMatch.Success) {
                $ind = $vigMatch.Groups['ind'].Value
                $v = $vigMatch.Groups['v'].Value
                $a = $vigMatch.Groups['a'].Value
                $b = $vigMatch.Groups['b'].Value
                $tail = $vigMatch.Groups['tail'].Value
                $vigBlock =
                    "$ind// RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: $patchVersion]$newline" +
                    "$ind// Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.$newline" +
                    "$ind" + "float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);$newline" +
                    "$ind" + "if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {$newline" +
                    "$ind  _rndx_vignette_strength *= CUSTOM_VIGNETTE;$newline" +
                    "$ind}$newline" +
                    "$ind$v = saturate(1.0f - (dot(float2($a, $b), float2($a, $b)) * _rndx_vignette_strength));$tail$newline" +
                    "$ind// RenoDX: <<< [Patch: PostProcessMaterialVignette]"
                $content = $content.Substring(0, $vigMatch.Index) + $vigBlock + $content.Substring($vigMatch.Index + $vigMatch.Length)
                $vignettePatched++
            } else {
                $vignettePatchMissing.Add($file.Name)
            }
        }

        # FinalizeSDR: run the RenoDX SDR finalization when this draw owns the final.
        if ($content -notmatch '\[Patch: PostProcessMaterialFinalizeSDR\]') {
            $svMatches = [regex]::Matches($content, '(?m)^(?<ind>[ \t]*)SV_Target\.x = (?<x>_\d+);\r?\n[ \t]*SV_Target\.y = (?<y>_\d+);\r?\n[ \t]*SV_Target\.z = (?<z>_\d+);')
            if ($svMatches.Count -gt 0) {
                $svMatch = $svMatches[$svMatches.Count - 1]
                $ind = $svMatch.Groups['ind'].Value
                $x = $svMatch.Groups['x'].Value
                $y = $svMatch.Groups['y'].Value
                $z = $svMatch.Groups['z'].Value
                $finBlock =
                    "$ind// RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: $patchVersion]$newline" +
                    "$ind// Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.$newline" +
                    "$ind" + "if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {$newline" +
                    "$ind  float3 _rndx_final_color = FinalizeSDR(float3($x, $y, $z), _sunDirection.y, _moonDirection.y);$newline" +
                    "$ind  $x = _rndx_final_color.x;$newline" +
                    "$ind  $y = _rndx_final_color.y;$newline" +
                    "$ind  $z = _rndx_final_color.z;$newline" +
                    "$ind}$newline" +
                    "$ind// RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]$newline"
                $content = $content.Substring(0, $svMatch.Index) + $finBlock + $content.Substring($svMatch.Index)
                $finalizePatched++
            } else {
                $finalizePatchMissing.Add($file.Name)
            }
        }
    }

    # ---- Stage 4: main Uber composite specials ----
    if ($isComposite) {
        # 4a. Chromatic aberration: scale the generic material CA ratio.
        if ($content -notmatch '\[Patch: BasicPostProcessChromaticAberration\]') {
            $caRaw = Find-BindlessLoadVar $content '_chromaticAberrationRatio'
            $caVar = Find-EnableCAProductVar $content $caRaw
            if ($null -ne $caVar) {
                $caLine = [regex]::Match($content, '(?m)^(?<ind>[ \t]*)' + [regex]::Escape($caVar) + ' = [^\r\n]*;')
                if ($caLine.Success) {
                    $ind = $caLine.Groups['ind'].Value
                    $caBlock = $newline +
                        "$ind// RenoDX: >>> [Patch: BasicPostProcessChromaticAberration] [Version: $patchVersion]$newline" +
                        "$ind// Description: SDR gameplay on the material-final arrangement can use this composite material shader as the final visible output and skip the standalone SDR final shader where RenoDX normally scales chromatic aberration. Apply the RenoDX Chromatic Aberration setting to this shader's generic material chromatic aberration ratio while leaving separate status/vignette chromatic effects under the game's native controls.$newline" +
                        "$ind$caVar *= CUSTOM_CHROMATIC_ABERRATION;$newline" +
                        "$ind// RenoDX: <<< [Patch: BasicPostProcessChromaticAberration]"
                    $insertAt = $caLine.Index + $caLine.Length
                    $content = $content.Substring(0, $insertAt) + $caBlock + $content.Substring($insertAt)
                    $caPatched++
                } else {
                    $compositeIssues.Add("$($file.Name): chromatic aberration product line not found")
                }
            } else {
                $compositeIssues.Add("$($file.Name): chromatic aberration ratio/product vars not found")
            }
        }

        # 4b. RCAS sharpening with reconstructed taps, inside the tonemap branch.
        if ($content -notmatch '\[Patch: BasicPostProcessSharpening\]') {
            if ($tonemapApplied -and $null -ne $curveOutVars) {
                $missingAnchors = New-Object System.Collections.Generic.List[string]

                $svr1 = Find-BindlessLoadVar $content '_statusVignetteRatio1'
                $svr2 = Find-BindlessLoadVar $content '_statusVignetteRatio2'
                $svr3 = Find-BindlessLoadVar $content '_statusVignetteRatio3'
                $svs1 = Find-EnableCAProductVar $content (Find-BindlessLoadVar $content '_statusVignetteChromaticShift1')
                $svs2 = Find-EnableCAProductVar $content (Find-BindlessLoadVar $content '_statusVignetteChromaticShift2')
                $svs3 = Find-EnableCAProductVar $content (Find-BindlessLoadVar $content '_statusVignetteChromaticShift3')
                $caProduct = Find-EnableCAProductVar $content (Find-BindlessLoadVar $content '_chromaticAberrationRatio')
                $caShift = Find-BindlessLoadVar $content '_chromaticAberrationShiftValue'
                $dG = Find-BindlessLoadVar $content '_detectModeG'
                $dR = Find-BindlessLoadVar $content '_detectModeR'
                $dB = Find-BindlessLoadVar $content '_detectModeB'
                $dK = Find-BindlessLoadVar $content '_detectModeKnowledge'
                $dI = Find-BindlessLoadVar $content '_detectModeInterrupt'
                $quickslot = Find-BindlessLoadVar $content '_uiQuickSlotEffect'

                foreach ($check in @(
                    @('statusVignetteRatio1', $svr1), @('statusVignetteRatio2', $svr2), @('statusVignetteRatio3', $svr3),
                    @('statusVignetteChromaticShift1', $svs1), @('statusVignetteChromaticShift2', $svs2), @('statusVignetteChromaticShift3', $svs3),
                    @('chromaticAberrationProduct', $caProduct), @('chromaticAberrationShiftValue', $caShift),
                    @('detectModeG', $dG), @('detectModeR', $dR), @('detectModeB', $dB), @('detectModeKnowledge', $dK), @('detectModeInterrupt', $dI),
                    @('uiQuickSlotEffect', $quickslot))) {
                    if ($null -eq $check[1]) { $missingAnchors.Add($check[0]) }
                }

                # Fresh _uiMainMenuEffect load: existing loads sit in conditional
                # branches, so their hoisted vars are not assigned on every path.
                $menuExpr = $null
                $menuMatch = [regex]::Match($content, '(?m)^[ \t]*_\d+ = (WaveReadLaneFirst\([^\r\n]*\._uiMainMenuEffect\));')
                if ($menuMatch.Success) {
                    $menuRhs = $menuMatch.Groups[1].Value
                    $guardMatch = [regex]::Match($menuRhs, '\(uint\)(_\d+) <')
                    if ($guardMatch.Success) {
                        $menuExpr = [regex]::Replace($menuRhs, "(?<![\w])$([regex]::Escape($guardMatch.Groups[1].Value))(?![\d])", '_rndx_mi')
                    }
                }
                if ($null -eq $menuExpr) { $missingAnchors.Add('uiMainMenuEffect') }

                # Warped UV pair and resource names from the first scene-color sample.
                $sceneRes = $null; $uvX = $null; $uvY = $null
                $sceneMatchS = [regex]::Match($content, '(__\d+__\d+__\d+__\d+__g_sceneColor)\.Sample\([^,]+, float2\((_\d+), (_\d+)\)\)')
                if ($sceneMatchS.Success) {
                    $sceneRes = $sceneMatchS.Groups[1].Value
                    $uvX = $sceneMatchS.Groups[2].Value
                    $uvY = $sceneMatchS.Groups[3].Value
                } else {
                    $missingAnchors.Add('sceneColorSample')
                }

                $clampSampler = $null
                $clampMatch = [regex]::Match($content, '(__\d+__\d+__\d+__\d+__g_staticBilinearClamp)\b')
                if ($clampMatch.Success) { $clampSampler = $clampMatch.Groups[1].Value } else { $missingAnchors.Add('staticBilinearClamp') }

                if (-not $content.Contains('_fleeCount')) { $missingAnchors.Add('fleeCount') }

                $anchorIdx = $content.IndexOf('// RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]', [System.StringComparison]::Ordinal)
                if ($anchorIdx -lt 0) { $missingAnchors.Add('tonemapEmission') }

                if ($missingAnchors.Count -eq 0) {
                    $insertAt = $content.IndexOf("`n", $anchorIdx) + 1
                    $ind = '    '
                    $eps = '0.0010000000474974513f'
                    $c1 = $curveOutVars[0]; $c2 = $curveOutVars[1]; $c3 = $curveOutVars[2]
                    $sharpenBlock =
                        "$ind// RenoDX: >>> [Patch: BasicPostProcessSharpening] [Version: $patchVersion]$newline" +
                        "$ind// Description: SDR gameplay on the material-final arrangement can use this composite material shader as the final visible output and skip the standalone SDR final shader, which is where RenoDX RCAS sharpening normally runs. This fused composite never exposes a completed final-color texture, so neighbor pixels cannot be sampled directly for sharpening. When the addon marks this shader as the basic postprocess final path, reconstruct the four RCAS neighbor taps by sampling g_sceneColor one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve on the tonemapped center. This runs after tonemapping and before the vanilla final-output suite, film grain, vignette, sRGB encode, and SDR finalization, the same pipeline position where the standalone final path applies RCAS. The taps intentionally skip the material effect chain, which is an identity passthrough of g_sceneColor during plain gameplay; sharpening is skipped entirely while UV-warping or color-restructuring screen effects are active (fisheye/follow-learning warp, quickslot or main-menu effects, status/generic chromatic aberration, flee darkening, detect mode) because reconstructed taps would not match the transformed center there.$newline" +
                        "$ind// The material composite is the visible final only when the game skips its manual$newline" +
                        "$ind// sRGB encode (_etcParams.z == 0): the display target's sRGB view encodes in hardware.$newline" +
                        "$ind// When feeding the standalone final pass it encodes manually (_etcParams.z > 0), so$newline" +
                        "$ind// that constant is a per-draw final-vs-intermediate signal with no addon-side latency.$newline" +
                        "$ind" + "if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f) && CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {$newline" +
                        "$ind  int _rndx_mi = WaveReadLaneFirst(_materialIndex);$newline" +
                        "$ind  float _rndx_menu_effect = $menuExpr;$newline" +
                        "$ind  bool _rndx_uv_warped = ($uvX != TEXCOORD.x) || ($uvY != TEXCOORD.y);$newline" +
                        "$ind  bool _rndx_status_ca = (($svr1 >= $eps) && ($svs1 >= $eps)) || (($svr2 >= $eps) && ($svs2 >= $eps)) || (($svr3 >= $eps) && ($svs3 >= $eps));$newline" +
                        "$ind  bool _rndx_generic_ca = ($caProduct >= $eps) && ($caShift >= $eps);$newline" +
                        "$ind  bool _rndx_detect_mode = ($dG >= $eps) || ($dR >= $eps) || ($dB >= $eps) || ($dK >= $eps) || ($dI >= $eps);$newline" +
                        "$ind  bool _rndx_effect_active = _rndx_uv_warped$newline" +
                        "$ind                             || ($quickslot >= $eps)$newline" +
                        "$ind                             || (_rndx_menu_effect >= $eps)$newline" +
                        "$ind                             || (_fleeCount >= $eps)$newline" +
                        "$ind                             || _rndx_status_ca$newline" +
                        "$ind                             || _rndx_generic_ca$newline" +
                        "$ind                             || _rndx_detect_mode;$newline" +
                        "$ind  if (!_rndx_effect_active) {$newline" +
                        "$ind    uint _rndx_scene_w, _rndx_scene_h;$newline" +
                        "$ind    $sceneRes.GetDimensions(_rndx_scene_w, _rndx_scene_h);$newline" +
                        "$ind    float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);$newline" +
                        "$ind    float3 _rndx_tap_b = $sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb;$newline" +
                        "$ind    float3 _rndx_tap_d = $sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb;$newline" +
                        "$ind    float3 _rndx_tap_f = $sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb;$newline" +
                        "$ind    float3 _rndx_tap_h = $sceneRes.SampleLevel($clampSampler, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb;$newline" +
                        "$ind    _rndx_tap_b = TonemapReplacer(_rndx_tap_b);$newline" +
                        "$ind    _rndx_tap_d = TonemapReplacer(_rndx_tap_d);$newline" +
                        "$ind    _rndx_tap_f = TonemapReplacer(_rndx_tap_f);$newline" +
                        "$ind    _rndx_tap_h = TonemapReplacer(_rndx_tap_h);$newline" +
                        "$ind    float3 _rndx_sharpened_color = ApplyRCASTaps(float3($c1, $c2, $c3), _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);$newline" +
                        "$ind    $c1 = _rndx_sharpened_color.x;$newline" +
                        "$ind    $c2 = _rndx_sharpened_color.y;$newline" +
                        "$ind    $c3 = _rndx_sharpened_color.z;$newline" +
                        "$ind  }$newline" +
                        "$ind}$newline" +
                        "$ind// RenoDX: <<< [Patch: BasicPostProcessSharpening]$newline"
                    $content = $content.Substring(0, $insertAt) + $sharpenBlock + $content.Substring($insertAt)
                    $sharpenPatched++
                } else {
                    $compositeIssues.Add("$($file.Name): sharpening anchors missing: $($missingAnchors -join ', ')")
                }
            } else {
                $compositeIssues.Add("$($file.Name): sharpening skipped because tonemap replacement did not apply")
            }
        }

        # 4c. Film grain on the branch output, before the native vignette block.
        if ($content -notmatch '\[Patch: BasicPostProcessFilmGrain\]') {
            if ($null -ne $branchOutVars) {
                $grainAnchor = 'if (_etcParams.y > 1.0f) {'
                $grainIdx = $content.IndexOf($grainAnchor, [System.StringComparison]::Ordinal)
                if ($grainIdx -ge 0) {
                    $grainLineStart = Get-LineStart $content $grainIdx
                    $ind = $content.Substring($grainLineStart, $grainIdx - $grainLineStart)
                    $o1 = $branchOutVars[0]; $o2 = $branchOutVars[1]; $o3 = $branchOutVars[2]
                    $grainBlock =
                        "$ind// RenoDX: >>> [Patch: BasicPostProcessFilmGrain] [Version: $patchVersion]$newline" +
                        "$ind// Description: SDR gameplay on the material-final arrangement can use this composite material shader as the final visible output and skip the standalone SDR final shader. When the runtime marks this draw as the basic postprocess final path, apply RenoDX custom film grain directly to the local output color. This preserves the older direct-output material fallback without sampling neighboring final-pass textures from a different source stage.$newline" +
                        "$ind" + "if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f) && CUSTOM_FILM_GRAIN_TYPE != 0) {$newline" +
                        "$ind  float3 _rndx_postprocess_color = renodx::effects::ApplyFilmGrain(float3($o1, $o2, $o3), TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);$newline" +
                        "$ind  $o1 = _rndx_postprocess_color.x;$newline" +
                        "$ind  $o2 = _rndx_postprocess_color.y;$newline" +
                        "$ind  $o3 = _rndx_postprocess_color.z;$newline" +
                        "$ind}$newline" +
                        "$ind// RenoDX: <<< [Patch: BasicPostProcessFilmGrain]$newline"
                    $content = $content.Substring(0, $grainLineStart) + $grainBlock + $content.Substring($grainLineStart)
                    $grainPatched++
                } else {
                    $compositeIssues.Add("$($file.Name): film grain anchor (vignette block) not found")
                }
            } else {
                $compositeIssues.Add("$($file.Name): film grain skipped because branch output wiring is unknown")
            }
        }
    }

    # ---- Stage 5: annotate the tonemap.hlsli dependency arrangement ----
    $beforeAnnotate = $content
    $content = Add-TonemapDependencyAnnotations -Text $content -Newline $newline `
        -Version $bindingsPatchVersion -Consumer 'the material grading path'
    if ($content -eq $beforeAnnotate -and $content -notmatch '\[Patch: RenoDXDependencyBindings\]') {
        $bindingsAnnotationMissing.Add($file.Name)
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
Write-Output "SDR_FILES=$sdrCount"
Write-Output "HDR_FILES=$hdrCount"
Write-Output "TONEMAP_CURVE_REPLACED=$curveReplaced"
Write-Output "TONEMAP_FULLBODY_REPLACED=$fullBodyReplaced"
Write-Output "VIGNETTE_PATCHED=$vignettePatched"
Write-Output "FINALIZE_PATCHED=$finalizePatched"
Write-Output "COMPOSITE_SDR_FILES=$($compositeSdrFiles.Count) [$($compositeSdrFiles -join ', ')]"
Write-Output "COMPOSITE_CA_PATCHED=$caPatched"
Write-Output "COMPOSITE_SHARPEN_PATCHED=$sharpenPatched"
Write-Output "COMPOSITE_FILMGRAIN_PATCHED=$grainPatched"

if ($compositeSdrFiles.Count -lt 1) {
    Write-Output "WARNING_COMPOSITE_DETECTION=no SDR Uber composite detected; the material-final sharpening/CA/film-grain treatment was not applied anywhere"
}

if ($nativeMissing.Count -gt 0) {
    Write-Output "NATIVE_MISSING=$($nativeMissing.Count)"
    $nativeMissing | ForEach-Object { Write-Output ("  " + $_) }
}

if ($missingCBufferPattern.Count -gt 0) {
    Write-Output "MISSING_CBUFFER_PATTERN=$($missingCBufferPattern.Count)"
    $missingCBufferPattern | ForEach-Object { Write-Output ("  " + $_) }
}

if ($missingTonemapPattern.Count -gt 0) {
    Write-Output "MISSING_TONEMAP_PATTERN=$($missingTonemapPattern.Count)"
    $missingTonemapPattern | ForEach-Object { Write-Output ("  " + $_) }
}

if ($suiteParseFailed.Count -gt 0) {
    Write-Output "SUITE_PARSE_FAILED=$($suiteParseFailed.Count)"
    $suiteParseFailed | ForEach-Object { Write-Output ("  " + $_) }
}

if ($vignettePatchMissing.Count -gt 0) {
    Write-Output "VIGNETTE_PATTERN_MISSING=$($vignettePatchMissing.Count)"
    $vignettePatchMissing | ForEach-Object { Write-Output ("  " + $_) }
}

if ($finalizePatchMissing.Count -gt 0) {
    Write-Output "FINALIZE_PATTERN_MISSING=$($finalizePatchMissing.Count)"
    $finalizePatchMissing | ForEach-Object { Write-Output ("  " + $_) }
}

if ($curveVarLeaks.Count -gt 0) {
    Write-Output "CURVE_VAR_LEAKS=$($curveVarLeaks.Count)"
    $curveVarLeaks | ForEach-Object { Write-Output ("  " + $_) }
}

if ($compositeIssues.Count -gt 0) {
    Write-Output "COMPOSITE_ISSUES=$($compositeIssues.Count)"
    $compositeIssues | ForEach-Object { Write-Output ("  " + $_) }
}

if ($bindingsAnnotationMissing.Count -gt 0) {
    Write-Output "BINDINGS_ANNOTATION_MISSING=$($bindingsAnnotationMissing.Count)"
    $bindingsAnnotationMissing | ForEach-Object { Write-Output ("  " + $_) }
}
