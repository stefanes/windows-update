#Requires -RunAsAdministrator

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
if (-Not (Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -ItemType Directory -Force
}

Set-ItemProperty -Path $registryPath -Name NoAutoUpdate -Value 1
