param deploymentLocation string = 'uk south'
param dataFactoryName string = 'VivekADF09092'

resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: dataFactoryName
  location: deploymentLocation
}
