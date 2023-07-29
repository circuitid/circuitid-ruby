# CircuitID::Clients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **mac** | **String** |  |  |
| **http_user_agent** | **String** |  | [optional] |
| **manufacture** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Clients.new(
  name: null,
  user: null,
  mac: null,
  http_user_agent: null,
  manufacture: null,
  status: null
)
```

