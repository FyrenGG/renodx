# Shared annotation emitter for the grading regeneration scripts.
#
# The generators inject the tonemap.hlsli dependency arrangement - the RENODX_TONEMAP_*
# defines, the include itself, and the '#if 0' wraps that suppress the native cbuffers
# tonemap.hlsli redeclares - as bare preprocessor lines. That is injected RenoDX code in
# a decompiled body, so it needs begin/end markers like every other patch here: without
# them the divergence is invisible to the block-name parity check that proves a version
# port lost nothing, and to the annotation-coverage audit.
#
# Dot-source this file; it defines Add-TonemapDependencyAnnotations.

Set-StrictMode -Version Latest

# Wraps the single statement containing $LineNeedle in a begin/end block. Used for the
# in-place edits that change one native line rather than inserting new code, which the
# generators otherwise apply with no marker at all. Idempotent, and a no-op when the
# needle is absent so callers that patch conditionally do not need a second guard.
function Add-LineAnnotation {
    param(
        [Parameter(Mandatory)] [AllowEmptyString()] [string]$Text,
        [Parameter(Mandatory)] [string]$Newline,
        [Parameter(Mandatory)] [string]$Name,
        [Parameter(Mandatory)] [string]$Version,
        [Parameter(Mandatory)] [string]$Description,
        [Parameter(Mandatory)] [string]$LineNeedle
    )

    if ($Text.Contains("[Patch: $Name]")) { return $Text }
    $idx = $Text.IndexOf($LineNeedle, [System.StringComparison]::Ordinal)
    if ($idx -lt 0) { return $Text }

    $lineStart = $Text.LastIndexOf("`n", $idx)
    $lineStart = if ($lineStart -lt 0) { 0 } else { $lineStart + 1 }
    $lineEnd = $Text.IndexOf("`n", $idx)
    if ($lineEnd -lt 0) { $lineEnd = $Text.Length }

    $line = $Text.Substring($lineStart, $lineEnd - $lineStart).TrimEnd("`r")
    $indent = [regex]::Match($line, '^[ \t]*').Value

    $block = "$indent// RenoDX: >>> [Patch: $Name] [Version: $Version]$Newline" +
        "$indent// Description: $Description$Newline" +
        $line + $Newline +
        "$indent// RenoDX: <<< [Patch: $Name]"

    return $Text.Substring(0, $lineStart) + $block + $Text.Substring($lineEnd)
}

# Wraps the run of consecutive lines containing $LineNeedle in one begin/end block. The
# generators apply some treatments as a repeated in-place regex over sibling statements,
# which leaves the result unmarked; this marks the whole run as the single patch it is.
function Add-RunAnnotation {
    param(
        [Parameter(Mandatory)] [AllowEmptyString()] [string]$Text,
        [Parameter(Mandatory)] [string]$Newline,
        [Parameter(Mandatory)] [string]$Name,
        [Parameter(Mandatory)] [string]$Version,
        [Parameter(Mandatory)] [string]$Description,
        [Parameter(Mandatory)] [string]$LineNeedle
    )

    if ($Text.Contains("[Patch: $Name]")) { return $Text }

    $lines = @($Text -split '\r?\n')
    $first = -1
    $last = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i].Contains($LineNeedle)) {
            if ($first -lt 0) { $first = $i }
            $last = $i
        } elseif ($first -ge 0) {
            break
        }
    }
    if ($first -lt 0) { return $Text }

    $indent = [regex]::Match($lines[$first], '^[ \t]*').Value
    $out = New-Object System.Collections.Generic.List[string]
    if ($first -gt 0) { $out.AddRange([string[]]$lines[0..($first - 1)]) }
    $out.Add("$indent// RenoDX: >>> [Patch: $Name] [Version: $Version]")
    $out.Add("$indent// Description: $Description")
    $out.AddRange([string[]]$lines[$first..$last])
    $out.Add("$indent// RenoDX: <<< [Patch: $Name]")
    if ($last + 1 -lt $lines.Count) { $out.AddRange([string[]]$lines[($last + 1)..($lines.Count - 1)]) }
    return ($out -join $Newline)
}

# Wraps the tonemap.hlsli dependency directives in RenoDXDependencyBindings blocks.
# Idempotent: returns $Text unchanged once the blocks are present. $Consumer names the
# patch family that consumes the shared declarations and is quoted in the descriptions.
function Add-TonemapDependencyAnnotations {
    param(
        [Parameter(Mandatory)] [AllowEmptyString()] [string]$Text,
        [Parameter(Mandatory)] [string]$Newline,
        [Parameter(Mandatory)] [string]$Version,
        [Parameter(Mandatory)] [string]$Consumer
    )

    if ($Text.Contains('[Patch: RenoDXDependencyBindings]')) { return $Text }

    $begin = "// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: $Version]"
    $end = '// RenoDX: <<< [Patch: RenoDXDependencyBindings]'

    # Slim finals pull in common.hlsl instead of the tonemap arrangement.
    $commonInclude = '#include "../../common.hlsl"'
    if ($Text.Contains($commonInclude)) {
        $desc = '// Description: Imports "../../common.hlsl" for the common RenoDX color and shader-injection declarations used below.'
        $block = $begin + $Newline + $desc + $Newline + $commonInclude + $Newline + $end
        $idx = $Text.IndexOf($commonInclude, [System.StringComparison]::Ordinal)
        return $Text.Substring(0, $idx) + $block + $Text.Substring($idx + $commonInclude.Length)
    }

    $guard = '#if 0 // Provided by tonemap.hlsli'
    $include = '#include "../tonemap.hlsli"'
    if (-not $Text.Contains($include) -or -not $Text.Contains($guard)) { return $Text }

    $lines = [System.Collections.Generic.List[string]]($Text -split '\r?\n')

    # Which native cbuffer each guard suppresses drives the description wording, so the
    # blocks stay correct whichever cbuffers a given permutation happens to declare.
    $openDesc = @{
        'ExposureConstantBuffer'   = "// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by $Consumer, and begins suppressing the duplicate native exposure declaration."
        'GlobalPushConstants'      = "// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by $Consumer."
        'ColorBlindConstantBuffer' = "// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by $Consumer."
    }
    $closeDesc = @{
        'ExposureConstantBuffer'   = '// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.'
        'GlobalPushConstants'      = '// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.'
        'ColorBlindConstantBuffer' = '// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.'
    }

    $out = New-Object System.Collections.Generic.List[string]
    $firstGuard = $true
    $i = 0
    while ($i -lt $lines.Count) {
        $line = $lines[$i]

        if ($line.TrimEnd() -eq $guard) {
            # Name the suppressed cbuffer from the region this guard opens.
            $suppressed = $null
            for ($j = $i + 1; $j -lt $lines.Count -and $lines[$j].TrimEnd() -ne '#endif'; $j++) {
                foreach ($known in @('ExposureConstantBuffer', 'GlobalPushConstants', 'ColorBlindConstantBuffer')) {
                    if ($lines[$j] -match ('^cbuffer \S*' + $known + ' : register')) { $suppressed = $known; break }
                }
                if ($null -ne $suppressed) { break }
            }
            if ($null -eq $suppressed -or -not $openDesc.ContainsKey($suppressed)) { $out.Add($line); $i++; continue }

            if ($firstGuard) {
                # The defines/include/first guard are one injection: drop the generator's
                # blank-line padding so the block delimits exactly the injected lines.
                while ($out.Count -gt 0 -and $out[$out.Count - 1].Trim() -eq '') { $out.RemoveAt($out.Count - 1) }
                $incAt = $out.Count
                while ($incAt -gt 0 -and $out[$incAt - 1].TrimStart().StartsWith('#')) { $incAt-- }
                $injected = $out.GetRange($incAt, $out.Count - $incAt)
                $out.RemoveRange($incAt, $out.Count - $incAt)
                while ($out.Count -gt 0 -and $out[$out.Count - 1].Trim() -eq '') { $out.RemoveAt($out.Count - 1) }
                $out.Add('')
                $out.Add($begin)
                $out.Add($openDesc[$suppressed])
                $out.AddRange($injected)
                $out.Add($line)
                $out.Add($end)
                $out.Add('')
                $firstGuard = $false
            } else {
                $out.Add($begin)
                $out.Add($openDesc[$suppressed])
                $out.Add($line)
                $out.Add($end)
            }

            # Wrap the matching '#endif' as its own block.
            $i++
            while ($i -lt $lines.Count -and $lines[$i].TrimEnd() -ne '#endif') { $out.Add($lines[$i]); $i++ }
            if ($i -lt $lines.Count) {
                $out.Add($begin)
                $out.Add($closeDesc[$suppressed])
                $out.Add($lines[$i])
                $out.Add($end)
                $i++
            }
            continue
        }

        $out.Add($line)
        $i++
    }

    return ($out -join $Newline)
}
