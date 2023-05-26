$folderPath = (Get-Item -Path ".\").FullName

$size = Get-ChildItem -Path $folderPath -Recurse | Measure-Object -Property Length -Sum
$sizeInBytes = $size.Sum
$sizeInMB = [math]::round($sizeInBytes / 1MB,2)
$sizeInGB= [math]::round($sizeInBytes / 1GB,1)
if($sizeInMB -gt 1024)
{Write-Host "Total Size: $sizeInGB GB"}
else{
Write-Host "Total Size: $sizeInMB MB"
}