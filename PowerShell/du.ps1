param(
    [switch]$p
)

$Path = $null

if ($p) {
    $Path = Read-Host "Enter the path:"
} else {
    $Path = (Get-Location).Path
}

$size = 0

$files = Get-ChildItem -Recurse -Force -File -LiteralPath $Path -ErrorAction SilentlyContinue
if ($files) {
    foreach ($file in $files) {
        $size += $file.Length
    }
}

$folders = Get-ChildItem -Recurse -Force -Directory -LiteralPath $Path -ErrorAction SilentlyContinue
if ($folders) {
    foreach ($folder in $folders) {
        $size += (Get-ChildItem -Recurse -Force -File -LiteralPath $folder.FullName -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum
    }
}

if ($size -ge 1GB) {
    $sizeFormatted = "{0:N2} GB" -f ($size / 1GB)
} elseif ($size -ge 1MB) {
    $sizeFormatted = "{0:N2} MB" -f ($size / 1MB)
} else {
    $sizeFormatted = "{0:N2} KB" -f ($size / 1KB)
}

Write-Host "Total Size: $sizeFormatted"
