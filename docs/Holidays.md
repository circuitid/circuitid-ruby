# CircuitIDAPIClient::Holidays

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **object** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **object_ref** | **Object** |  |  |
| **date_time_ranges** | **Object** |  |  |
| **status** | **Object** |  | [optional] |
| **destination_type** | **Object** |  |  |
| **destination** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **call_forwarding_destination** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Holidays.new(
  name: null,
  object: null,
  object_ref: null,
  date_time_ranges: null,
  status: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null
)
```

