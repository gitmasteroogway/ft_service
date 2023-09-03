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

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'sgsfgjfdfsdfdsf09sdf8'
  location: 'westus3'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'sdfsgsfgsdgseds'
  location: 'westus3'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
