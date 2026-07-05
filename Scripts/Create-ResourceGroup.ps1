# Create-ResourceGroup.ps1

$resourceGroup = "Automation-RG"
$location = "East US"

Write-Host "Creating Resource Group..." -ForegroundColor Green

New-AzResourceGroup `
    -Name $resourceGroup `
    -Location $location

Write-Host "Resource Group created successfully." -ForegroundColor Green
