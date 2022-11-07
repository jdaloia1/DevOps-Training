param storageAccountName string
param storageAccountSKU  string
param deploymentLocation string
param storageAccountKind string

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'storageName'
  location: 'uk south'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
