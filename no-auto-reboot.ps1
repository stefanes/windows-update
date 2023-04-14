#Requires -RunAsAdministrator

# Windows Update
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows"
New-Item -Path $registryPath -Name WindowsUpdate
$registryPath += "\WindowsUpdate"
New-Item -Path $registryPath -Name AU
$registryPath += "\AU"

Set-ItemProperty -Path $registryPath -Name AUOptions -Value 3
Set-ItemProperty -Path $registryPath -Name NoAutoRebootWithLoggedOnUsers -Value 1
