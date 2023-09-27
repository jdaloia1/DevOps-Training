param location string = 'uk south'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'tobystorageaccount'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
