# CircuitID::FaxaccountsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **inbound_notification** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **outbound_notification** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **number** | **String** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::FaxaccountsCreateOrPatch.new(
  name: null,
  order: null,
  inbound_notification: null,
  outbound_notification: null,
  number: null
)
```

