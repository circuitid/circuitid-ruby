# CircuitIDAPIClient::Invoices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Object** |  |  |
| **subtotal** | **Object** |  |  |
| **tax** | **Object** |  | [optional] |
| **setup** | **Object** |  | [optional] |
| **discount** | **Object** |  | [optional] |
| **closed_at** | **Object** |  | [optional] |
| **due_at** | **Object** |  |  |
| **status** | **Object** |  |  |
| **error** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Invoices.new(
  amount: null,
  subtotal: null,
  tax: null,
  setup: null,
  discount: null,
  closed_at: null,
  due_at: null,
  status: null,
  error: null
)
```

