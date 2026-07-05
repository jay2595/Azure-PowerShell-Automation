# Create-VNet.ps1

$resourceGroup = "Project7-RG"
$location = "East US"

$subnet = New-AzVirtualNetworkSubnetConfig `
    -Name "Subnet1" `
    -AddressPrefix "10.0.1.0/24"

New-AzVirtualNetwork `
    -Name "AutomationVNet" `
    -ResourceGroupName $resourceGroup `
    -Location $location `
    -AddressPrefix "10.0.0.0/16" `
    -Subnet $subnet

Write-Host "Virtual Network created successfully."
