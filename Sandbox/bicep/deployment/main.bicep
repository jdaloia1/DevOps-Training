//storage account parameters
param deploymentLocation string 
param storageAccountName string
param storageAccountSKU string
param storageAccountKind string

// data factory parameters
param dataFactoryName string
param deployDataFactory bool

module storageAccount '../templates/storage-account.bicep'= {
  name: 'storageAccount'
  params: {
    deploymentLocation: deploymentLocation
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
}

module dataFactory '../templates/data-factory.bicep'= if(deployDataFactory) {
  name: 'dataFactory'
  params: {
    dataFactoryName: dataFactoryName
    deploymentLocation: deploymentLocation
  }
  dependsOn: [storageAccount]
}
