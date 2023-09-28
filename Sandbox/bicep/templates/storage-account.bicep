param deploymentLocation string
param storageAccountName string
param storageAccountSKU string
param storageAccountKind string

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01'= {
  name: storageAccountName
  location: deploymentLocation
  sku: {
    name: storageAccountSKU
  }
  kind: storageAccountKind
}
