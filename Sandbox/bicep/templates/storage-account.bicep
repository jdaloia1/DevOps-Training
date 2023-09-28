resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'hassanstorage46318'
  location: 'uk south'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
