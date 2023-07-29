# CircuitID::GetInvoice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **subtotal** | **Integer** |  |  |
| **tax** | **Integer** |  | [optional] |
| **setup** | **Integer** |  | [optional] |
| **discount** | **Integer** |  | [optional] |
| **closed_at** | **Time** |  | [optional] |
| **due_at** | **Time** |  |  |
| **status** | **String** |  | [default to &#39;open&#39;] |
| **error** | **String** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetInvoice200Response.new(
  amount: null,
  subtotal: null,
  tax: null,
  setup: null,
  discount: null,
  closed_at: null,
  due_at: null,
  status: null,
  error: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

