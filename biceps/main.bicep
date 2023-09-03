@description('Specifies the location for resources.')
param location string = 'westus3'


resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'gljlsfgj9sfgpjw4kgsf90'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
