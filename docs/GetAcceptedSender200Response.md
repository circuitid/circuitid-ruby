# CircuitID::GetAcceptedSender200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | ObjectId (unique 12 bytes ID) |  |
| **service** | **String** | ObjectId (unique 12 bytes ID) |  |
| **service_ref** | **String** |  |  |
| **ref** | **String** |  |  |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetAcceptedSender200Response.new(
  object: null,
  service: null,
  service_ref: null,
  ref: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

