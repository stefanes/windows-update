#Requires -RunAsAdministrator

$registryPath = "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings"
if (-Not (Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -ItemType Directory -Force
}

$now = [DateTime]::Now
$activeHoursStart = $now.Hour
$activeHoursEnd = $now.AddHours(12).Hour
Set-ItemProperty -Path $registryPath -Name ActiveHoursStart -Value $activeHoursStart
Set-ItemProperty -Path $registryPath -Name ActiveHoursEnd -Value $activeHoursEnd
