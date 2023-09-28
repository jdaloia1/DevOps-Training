using './main.bicep'

param deploymentLocation = 'uk south'
param storageAccountName = 'htstorageaccount2'
param storageAccountSKU = 'Premium_LRS'
param storageAccountKind = 'StorageV2'
param dataFactoryName = 'ht-adf'
param deployDataFactory = true

