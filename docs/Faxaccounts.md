# CircuitIDAPIClient::Faxaccounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **order** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **inbound_notification** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **outbound_notification** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **number** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Faxaccounts.new(
  name: null,
  order: null,
  inbound_notification: null,
  outbound_notification: null,
  number: null
)
```

