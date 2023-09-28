param location string
param storageAccountName string
param storageAccountSKU string
param storageAccountKind string

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01'= {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountSKU
  }
  kind: storageAccountKind
}
