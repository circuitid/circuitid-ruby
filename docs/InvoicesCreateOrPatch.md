# CircuitID::InvoicesCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **subtotal** | **Integer** |  |  |
| **tax** | **Integer** |  | [optional] |
| **setup** | **Integer** |  | [optional] |
| **discount** | **Integer** |  | [optional] |
| **closed_at** | **Time** |  | [optional] |
| **status** | **String** |  | [default to &#39;open&#39;] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::InvoicesCreateOrPatch.new(
  amount: null,
  subtotal: null,
  tax: null,
  setup: null,
  discount: null,
  closed_at: null,
  status: null,
  error: null
)
```

