# CircuitID::GetCallQueueAgent200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callqueue** | **String** | ObjectId (unique 12 bytes ID) |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **priority** | **Integer** |  | [default to 1] |
| **tier** | **Integer** |  | [default to 1] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetCallQueueAgent200Response.new(
  callqueue: null,
  user: null,
  priority: null,
  tier: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

