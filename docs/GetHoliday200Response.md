# CircuitID::GetHoliday200Response

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
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetHoliday200Response.new(
  name: null,
  object: null,
  object_ref: null,
  date_time_ranges: null,
  status: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

