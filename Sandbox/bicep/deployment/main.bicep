param storageAccountName string
param storageAccountSKU  string
param deploymentLocation string
param storageAccountKind string

param deployDataFactory bool
param dataFactoryName string 
module storageAccount '../../../Demos/storage-account.bicep' = {
  name: 'storageAccount'
  params: {
    deploymentLocation: deploymentLocation
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
}


module dataFactory '../../../Demos/data-factory.bicep'   = if(deployDataFactory)   { 
  name: 'dataFactory'
  params: {
    dataFactoryName: dataFactoryName
    deploymentLocation: deploymentLocation
  }
  dependsOn: [
    storageAccount
  ]
}
