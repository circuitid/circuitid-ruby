# CircuitID::GetUserToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **token** | **String** |  |  |
| **expires_in_years** | **Integer** |  | [default to 1] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetUserToken200Response.new(
  name: null,
  user: null,
  token: null,
  expires_in_years: null,
  status: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

