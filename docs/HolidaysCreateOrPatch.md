# CircuitID::HolidaysCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) |  |
| **object_ref** | **String** |  |  |
| **date_time_ranges** | **Array&lt;Array&lt;Time&gt;&gt;** |  |  |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **destination_type** | **String** |  |  |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **String** |  | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::HolidaysCreateOrPatch.new(
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

