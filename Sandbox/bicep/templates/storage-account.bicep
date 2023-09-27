@allowed(['uk south', 'uk north'])
param location string = 'uk south'

param storageAccountName string = 'tobystorageaccount'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
