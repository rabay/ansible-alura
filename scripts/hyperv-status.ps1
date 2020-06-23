#Requires -RunAsAdministrator

# Get the Hyper-V feature and store it in $hyperv
# $hyperv = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online
$hyperv = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-Hypervisor -Online

Write-Host "Estado do Hyper-V:" $hyperv.State