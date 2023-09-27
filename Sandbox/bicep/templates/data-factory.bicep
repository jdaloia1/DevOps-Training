param location string = 'uk south'

resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: 'tobysdatafactory1'
  location: location
}
