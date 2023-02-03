targetScope = 'subscription'

// Parameters
param Location string = 'japaneast'
param resourceGroupNamePrefix string = 'rg'
param systemCode string = 'hawk'

// Variables
var resourceGroupName = '${resourceGroupNamePrefix}-${systemCode}'

// Create resource groups
resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: Location
}
