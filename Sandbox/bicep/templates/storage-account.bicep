param storageAccountName string
param storageAccountSKU  string
param deploymentLocation string
param storageAccountKind string 


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName
  location: deploymentLocation
  sku: {
    name: storageAccountSKU
  }
  kind: storageAccountKind
  properties: {
    publicNetworkAccess: 'Disabled'
  }
}
