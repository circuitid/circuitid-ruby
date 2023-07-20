# CircuitIDAPIClient::Numberports

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **type** | **Object** |  |  |
| **type_of_service** | **Object** |  |  |
| **authorized_person** | **Object** |  |  |
| **desired_due_date** | **Object** |  |  |
| **account_number** | **Object** |  |  |
| **account_phone_number** | **Object** |  |  |
| **office** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **e911** | **Object** |  | [optional] |
| **invoice** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **status** | **Object** |  |  |
| **destination_type** | **Object** |  |  |
| **destination** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **call_forwarding_destination** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Numberports.new(
  name: null,
  type: null,
  type_of_service: null,
  authorized_person: null,
  desired_due_date: null,
  account_number: null,
  account_phone_number: null,
  office: null,
  e911: null,
  invoice: null,
  status: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null
)
```

