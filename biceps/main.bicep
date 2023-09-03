@description('Specifies the location for resources.')
param location string = 'westeurope'


resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'gljlsfgj9sfgpjw4kgsf900'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'sgsfgjfdfsdfdsf09sdf8'
  location: location
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'sdfsgsfgsdgseds'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
