# CircuitID::Invoiceitems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **setup** | **Integer** |  | [optional] |
| **taxes** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [default to 1] |
| **invoice** | **String** | ObjectId (unique 12 bytes ID) |  |
| **ref** | **String** |  | [optional] |
| **object** | **String** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Invoiceitems.new(
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

