# Create-StorageAccount.ps1

$resourceGroup = "Project7-RG"
$location = "East US"

$storageAccount = "storage$(Get-Random -Maximum 99999)"

Write-Host "Creating Storage Account: $storageAccount"

New-AzStorageAccount `
    -ResourceGroupName $resourceGroup `
    -Name $storageAccount `
    -Location $location `
    -SkuName Standard_LRS `
    -Kind StorageV2

Write-Host "Storage Account created successfully."
