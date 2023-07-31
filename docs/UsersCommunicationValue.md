# CircuitID::UsersCommunicationValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notifications** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |
| **missed_calls** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |
| **call_recordings** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |
| **newsletters** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |
| **voicemails** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |
| **web** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |
| **email** | [**UsersCommunicationValueNotifications**](UsersCommunicationValueNotifications.md) |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::UsersCommunicationValue.new(
  notifications: null,
  missed_calls: null,
  call_recordings: null,
  newsletters: null,
  voicemails: null,
  web: null,
  email: null
)
```

