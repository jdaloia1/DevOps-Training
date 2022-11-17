param storageAccountName string
param deploymentLocation string
resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: storageAccountName
  location: deploymentLocation
}
