#Requires -RunAsAdministrator

# Windows Update
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows"
New-Item -Path $registryPath -Name WindowsUpdate
$registryPath += "\WindowsUpdate"
New-Item -Path $registryPath -Name AU
$registryPath += "\AU"

Set-ItemProperty -Path $registryPath -Name NoAutoUpdate -Value 1
