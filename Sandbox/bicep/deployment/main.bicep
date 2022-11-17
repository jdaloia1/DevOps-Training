param storageAccountName string
param storageAccountSKU  string
param deploymentLocation string
param storageAccountKind string
module storageAccount '../templates/storage-account.bicep' = {
  name: 'storageAccount'
  params:{
    storageAccountName:storageAccountName
    storageAccountKind:storageAccountKind
    deploymentLocation:deploymentLocation
    storageAccountSKU:storageAccountSKU
  }
}

param dataFactoryName string
param deployDataFactory bool = false
module dataFactory '../templates/data-factory.bicep' = if(deployDataFactory){
  name: 'dataFactory'
  params:{
    dataFactoryName:dataFactoryName
    deploymentLocation:deploymentLocation
  }
  dependsOn:[storageAccount]
}
