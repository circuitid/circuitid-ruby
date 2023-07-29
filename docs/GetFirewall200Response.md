# CircuitID::GetFirewall200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **priority** | **Integer** |  |  |
| **type** | **String** |  |  |
| **target** | **String** |  |  |
| **direction** | **String** |  | [optional] |
| **param** | **String** |  |  |
| **hits** | **Integer** |  | [optional] |
| **ai** | **Integer** |  | [optional][default to AI::N0] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **notification_hits** | **Integer** |  | [optional][default to 1] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetFirewall200Response.new(
  name: null,
  description: null,
  priority: null,
  type: null,
  target: null,
  direction: null,
  param: null,
  hits: null,
  ai: null,
  status: null,
  notification_hits: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

