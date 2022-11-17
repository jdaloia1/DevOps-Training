param storageAccountName string = 'vivek0909813'
param storageAccountKind string = 'standard_LRS'
param deploymentLocation string = 'uk south'
param storageAccountSKU string = 'storageV2'
resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01'= {
  name: storageAccountName
  location: deploymentLocation
  sku: {
    name: storageAccountSKU
  }
  kind: storageAccountKind
}
