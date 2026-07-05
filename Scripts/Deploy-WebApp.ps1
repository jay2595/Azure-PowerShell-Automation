# Deploy-WebApp.ps1

$resourceGroup = "Project7-RG"
$location = "East US"

New-AzAppServicePlan `
    -Name "AutomationPlan" `
    -Location $location `
    -ResourceGroupName $resourceGroup `
    -Tier "Basic"

New-AzWebApp `
    -Name "automationwebapp$(Get-Random -Maximum 99999)" `
    -Location $location `
    -AppServicePlan "AutomationPlan" `
    -ResourceGroupName $resourceGroup

Write-Host "Web App deployed successfully."
