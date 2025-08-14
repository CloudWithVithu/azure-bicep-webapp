@description('Name of the Web App')
param webAppName string = 'bicep-webapp-demo'

@description('Location for resources')
param location string = resourceGroup().location

@description('Name of the Storage Account')
param storageAccountName string = 'bicepstor${uniqueString(resourceGroup().id)}'

@description('App Service Plan SKU')
param skuName string = 'B1'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: '${webAppName}-plan'
  location: location
  sku: {
    name: skuName
    tier: 'Basic'
  }
}

resource webApp 'Microsoft.Web/sites@2022-09-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

output storageAccountName string = storageAccount.name
output webAppUrl string = 'https://${webApp.name}.azurewebsites.net'
