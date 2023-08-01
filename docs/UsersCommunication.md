# CircuitID::UsersCommunication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notifications** | [**UsersCommunicationNotifications**](UsersCommunicationNotifications.md) |  | [optional] |
| **missed_calls** | [**UsersCommunicationNotifications**](UsersCommunicationNotifications.md) |  | [optional] |
| **call_recordings** | [**UsersCommunicationNotifications**](UsersCommunicationNotifications.md) |  | [optional] |
| **newsletters** | [**UsersCommunicationNotifications**](UsersCommunicationNotifications.md) |  | [optional] |
| **voicemails** | [**UsersCommunicationNotifications**](UsersCommunicationNotifications.md) |  | [optional] |
| **web** | [**UsersCommunicationWeb**](UsersCommunicationWeb.md) |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::UsersCommunication.new(
  notifications: null,
  missed_calls: null,
  call_recordings: null,
  newsletters: null,
  voicemails: null,
  web: null
)
```

