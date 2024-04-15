param location string = resourceGroup().location

import * as timeZoneHelper from 'Helpers/timezoneHelper.bicep' //Import TimeZone helper.
param timezone timeZoneHelper.timeZoneParameterType = 'Europe/Berlin' //Set the TimeZone parameter of the timezoneParameterType

//Variables
var timezoneDataObject = timeZoneHelper.get(timezone)

// Windows Function App Example
resource functionAppWindows 'Microsoft.Web/sites@2023-01-01' = {
  name: 'fa-windows-example'
  location: location
  kind: 'functionapp' // This will be a Windows function app.
  properties: {
    siteConfig: {
      appSettings: [
        {
          name: 'WEBSITE_TIME_ZONE'
          value: timezoneDataObject.Windows
        }
      ]
    }
  }
}

// Linux Function App Example
resource functionAppLinux 'Microsoft.Web/sites@2023-01-01' = {
  name: 'fa-linux-example'
  location: location
  kind: 'functionapp, linux' // This will be a Linux function app.
  properties: {
    siteConfig: {
      appSettings: [
        {
          name: 'WEBSITE_TIME_ZONE'
          value: timezoneDataObject.IANA
        }
      ]
    }
  }
}
