Invoke-Expression (&starship init powershell)
Import-Module -Name Terminal-Icons

$options = @{
    PredictionSource = "HistoryAndPlugin"
    PredictionViewStyle = "InlineView"
    EditMode = "Windows"
    CompletionQueryItems = 100
}
Set-PSReadLineOption @options

########################################################

Set-Alias -Name restart -Value Restart-Computer

Set-Alias -Name np -Value notepad

Set-Alias -Name wapp -Value "C:\WhatsApp - Shortcut.lnk"

Set-Alias -Name mail -Value "C:\Outlook - Shortcut.lnk"

Set-Alias -Name msedge -Value "C:\Microsoft Edge - Shortcut.lnk"

Set-Alias -Name cgpt -Value "C:\ChatGPT - Shortcut.lnk"

Set-Alias -Name spotify -Value "C:\Spotify - Shortcut.lnk"

Set-Alias -Name trash -Value "C:\Users\priya\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Recycle bin.lnk"

function MSStore{Start-Process "ms-windows-store:"}
Set-Alias -Name store -Value MSStore

function vimrcfile{vim C:\tools\vim\_vimrc}
set-alias -name vimrc -value vimrcfile

function ghfolder{
    Invoke-Item "C:\Users\priya\Documents\GitHub"
}


Function docs { Set-Location "${env:USERPROFILE}/Documents" }
Function dwn { Set-Location "${env:USERPROFILE}/Downloads" }
function cdstartup{Set-location "C:\Users\priya\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"}
Function  cdgh { Set-Location "${env:USERPROFILE}/Documents/Github" }
function cdpwsh{Set-location "${env:USERPROFILE}/Documents/Powershell"}

##########################################################
function utube {Start-Process "https://www.youtube.com"
}
###########################
function gh {Start-Process "https://github.com/Priyanshu-1012"
}
##########################################################
function l{Get-ChildItem | Format-Wide}

#####
function ld{Get-ChildItem | Sort-Object LastWriteTime -Descending | Format-Wide}


################################################################

function uptime {
    $uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
    $uptimeFormatted = '{0:hh\:mm}' -f $uptime 
    Write-Host -NoNewline $uptimeFormatted "hrs"

}
################################################################
function tasks {
    param (
        [int]$Count = 20
    )
    
    Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First $Count
}

################################################################

function EmptyTempFolder{Remove-Item -Path "C:\Users\priya\AppData\Local\Temp\*" -Recurse -Force
}
Set-Alias -Name clr-temp -Value EmptyTempFolder


Set-Alias -Name clr-bin -Value 'Clear-RecycleBin'
################################################################
function weather{Invoke-RestMethod https://wttr.in/noida?0}
function weatherfull{Invoke-RestMethod https://wttr.in/noida}
################################################################
function sudo{powershell start-process pwsh -verb runas}

Set-Alias -Name "touch" New-Item -Force
################################################################GIT

Remove-Item alias:\gp -Force
Remove-Item alias:\gl -Force
function gs {
	git status
}
function gl {
	git pull $args
}

function gp {
	git push $args
}

function ga {
	git add $args
}

function gf {
	git fetch
}

function gc {
	git commit
}
################################################################
function du{
    & 'C:\Users\priya\Documents\PowerShell\du.ps1'
}
################################################################
function search {
    & 'C:\Users\priya\Documents\PowerShell\search.ps1'

}
################################################################
#calender 
Function cal {
    & 'C:\Users\priya\Documents\PowerShell\cal.ps1'
}

################################################################
function systemage{
  $installDateTime=Get-Date "10/20/2022"
    $currentDate = Get-Date -Hour 0 -Minute 0 -Second 0
    $systemAge = $currentDate - $installDateTime
    $systemagedays=$systemAge.days
    $systemageyears= [math]::floor($systemagedays / 365)
	if($systemageyears -eq 1){write-host "$systemageyears year, $systemagedays days"}
else{
    Write-host "$systemageyears years, $systemagedays days"
}}
################################################################
Function winfetch {
    & 'C:\Users\priya\Documents\PowerShell\winfetch.ps1'
}

Function img2ascii {
    & 'C:\Users\priya\Documents\PowerShell\img2ascii.ps1'
}

Function fe {
    & 'C:\Users\priya\Documents\PowerShell\winterm_fe.ps1'
}
################################################################

################################################################



# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
