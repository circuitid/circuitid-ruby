# CircuitIDAPIClient::Developerappsubscriptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developer_app** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **object** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **permissions** | **Object** |  | [optional] |
| **require_id** | **Object** |  | [optional] |
| **services** | **Object** |  |  |
| **events** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Developerappsubscriptions.new(
  developer_app: null,
  object: null,
  ref: null,
  permissions: null,
  require_id: null,
  services: null,
  events: null
)
```

