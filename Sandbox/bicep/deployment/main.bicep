param storageAccountName string
param storageAccountSKU  string
param deploymentLocation string
param storageAccountKind string

param deployDataFactory bool = false

module storageAccount '../templates/storage-account.bicep' = {
  name: storageAccountName
  params: {
    deploymentLocation: deploymentLocation
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
}


module dataFactory '../templates/data-factory.bicep'  = if(deployDataFactory) {
  name: storageAccountName
  params: {
    deploymentLocation: deploymentLocation
    storageAccountName: storageAccountName
  }
}
