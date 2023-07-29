# CircuitID::GetGroupMember200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | ObjectId (unique 12 bytes ID) |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) |  |
| **priority** | **Integer** |  | [optional] |
| **ref** | **String** |  |  |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetGroupMember200Response.new(
  group: null,
  object: null,
  priority: null,
  ref: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

