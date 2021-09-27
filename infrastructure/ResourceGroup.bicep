param identity string = ''

targetScope = 'subscription'

resource webAppResourceGroup 'Microsoft.Resources/resourceGroups@2020-10-01' = {
  name: deployment().name
  location: deployment().location
}

module resources 'Resources.bicep' = {
  name: 'resources'
  scope: webAppResourceGroup
  params: {
    location: deployment().location
    baseName: deployment().name
    identity: identity
  }
}

output CosmosDb__Account string = resources.outputs.CosmosEndpoint
output CosmosDb__DatabaseName string = resources.outputs.CosmosDatabase
output CosmosDb__ContainerName string = resources.outputs.CosmosContainerName
output WebSiteName string = resources.outputs.WebSiteName
