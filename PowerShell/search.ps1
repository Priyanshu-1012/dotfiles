$targetName = Read-Host "Enter name"

$foundPaths = Get-ChildItem -Path "." -Recurse -Filter "*$targetName*"

if ($foundPaths) {
 $foundPaths | ForEach-Object { Write-Host "Found: $($_.FullName)" }
                 }
else { Write-Host "N/A" -ForegroundColor Red}
