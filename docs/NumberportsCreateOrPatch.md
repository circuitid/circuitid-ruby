# CircuitID::NumberportsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **numbers** | **Array&lt;String&gt;** |  |  |
| **name** | **String** |  |  |
| **type_of_service** | **String** |  |  |
| **authorized_person** | **String** |  |  |
| **desired_due_date** | **Time** |  |  |
| **account_number** | **String** |  |  |
| **account_phone_number** | **String** |  |  |
| **office** | **String** | ObjectId (unique 12 bytes ID) |  |
| **e911** | **Integer** |  | [optional][default to E911::N0] |
| **destination_type** | **String** |  |  |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::NumberportsCreateOrPatch.new(
  numbers: null,
  name: null,
  type_of_service: null,
  authorized_person: null,
  desired_due_date: null,
  account_number: null,
  account_phone_number: null,
  office: null,
  e911: null,
  destination_type: null,
  destination: null,
  call_forwarding_destination: null
)
```

