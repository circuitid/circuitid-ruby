# CircuitID::UsersCommunicationNotifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **Boolean** |  | [optional][default to true] |
| **sms** | **Boolean** |  | [optional][default to true] |
| **sound** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::UsersCommunicationNotifications.new(
  email: null,
  sms: null,
  sound: null
)
```

