#Requires -RunAsAdministrator

# Get the Hyper-V feature and store it in $hyperv
# $hyperv = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online
$hyperv = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-Hypervisor -Online

# Check if Hyper-V is already enabled.
if($hyperv.State -eq "Enabled") {
    Write-Host "Hyper-V Hypervisor is already enabled. Disabling..."
    Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor
    Write-Host "Hyper-V Hypervisor is now Disabled."
} else {
    Write-Host "Hyper-V Hypervisor is disabled. Enabling..."
    # Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor
    Write-Host "Hyper-V Hypervisor is now Enabled"
}