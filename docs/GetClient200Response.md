# CircuitID::GetClient200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **mac** | **String** |  |  |
| **http_user_agent** | **String** |  | [optional] |
| **manufacture** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetClient200Response.new(
  name: null,
  user: null,
  mac: null,
  http_user_agent: null,
  manufacture: null,
  status: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

