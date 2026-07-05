# Create-VM.ps1

$resourceGroup = "Project7-RG"
$location = "East US"

$cred = Get-Credential

New-AzVm `
    -ResourceGroupName $resourceGroup `
    -Name "AutomationVM" `
    -Location $location `
    -VirtualNetworkName "AutomationVNet" `
    -SubnetName "Subnet1" `
    -SecurityGroupName "AutomationNSG" `
    -PublicIpAddressName "AutomationIP" `
    -Credential $cred `
    -Image Ubuntu2204
