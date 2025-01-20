
param vmName string
param ubuntuOSVersion string
param location string
param vmSize string
param authenticationType string = 'password'
param adminUsername string
@secure()
param adminPasswordOrKey string

module vm './modules/vm.bicep' = {
  name: 'vm'
  params: {
    vmName: vmName
    ubuntuOSVersion: ubuntuOSVersion
    location: location
    vmSize: vmSize
    authenticationType: authenticationType
    adminUsername: adminUsername
    adminPasswordOrKey: adminPasswordOrKey
  }
}

