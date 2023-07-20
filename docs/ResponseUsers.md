# CircuitIDAPIClient::ResponseUsers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by_user_id** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::ResponseUsers.new(
  created_by_user_id: null,
  updated_by_user_id: null
)
```

