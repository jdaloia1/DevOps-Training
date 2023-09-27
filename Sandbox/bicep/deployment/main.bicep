
param location string = 'uk south'

module storageAccount '../templates/storage-account.bicep' = {
  name: 'storageAccount'
  params: {
    storageAccountName: 'tobystorageaccount'
    location: location
  }
}

module dataFactory '../templates/data-factory.bicep' = {
  name: 'dataFactory'
  params: {
    dataFactoryName: 'tobysdatafactory'
    location: location
  }
  dependsOn: [storageAccount]
}
