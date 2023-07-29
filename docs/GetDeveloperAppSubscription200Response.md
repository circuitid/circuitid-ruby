# CircuitID::GetDeveloperAppSubscription200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developer_app** | **String** | ObjectId (unique 12 bytes ID) |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **String** |  | [optional] |
| **permissions** | **Object** |  | [optional] |
| **require_id** | **Integer** |  | [optional][default to REQUIRE_ID::N0] |
| **services** | **Array&lt;String&gt;** |  |  |
| **events** | **Array&lt;String&gt;** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetDeveloperAppSubscription200Response.new(
  developer_app: null,
  object: null,
  ref: null,
  permissions: null,
  require_id: null,
  services: null,
  events: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

