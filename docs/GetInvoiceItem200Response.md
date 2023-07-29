# CircuitID::GetInvoiceItem200Response

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
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetInvoiceItem200Response.new(
  name: null,
  amount: null,
  setup: null,
  taxes: null,
  quantity: null,
  invoice: null,
  ref: null,
  object: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

