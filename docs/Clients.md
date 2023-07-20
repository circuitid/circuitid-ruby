# CircuitID::Clients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **user** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **mac** | **Object** |  |  |
| **http_user_agent** | **Object** |  | [optional] |
| **manufacture** | **Object** |  | [optional] |
| **status** | **Object** |  | [optional] |

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

