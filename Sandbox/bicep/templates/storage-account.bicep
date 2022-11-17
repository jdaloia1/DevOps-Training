resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01'= {
  name: 'vivek090981'
  location: 'uksouth'
  sku: {
    name:'Standard_LRS' 
  }
  kind: 'StorageV2'
}
