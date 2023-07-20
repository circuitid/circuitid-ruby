# CircuitIDAPIClient::Invoiceitems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **amount** | **Object** |  |  |
| **setup** | **Object** |  | [optional] |
| **taxes** | **Object** |  | [optional] |
| **quantity** | **Object** |  |  |
| **invoice** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **ref** | **Object** |  | [optional] |
| **object** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Invoiceitems.new(
  name: null,
  amount: null,
  setup: null,
  taxes: null,
  quantity: null,
  invoice: null,
  ref: null,
  object: null
)
```

