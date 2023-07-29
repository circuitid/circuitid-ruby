# CircuitID::GetRateCenter200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **npa** | **String** |  |  |
| **nxx** | **String** |  |  |
| **lata** | **String** |  |  |
| **loc_state** | **String** |  |  |
| **rc_abbre** | **String** |  |  |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetRateCenter200Response.new(
  npa: null,
  nxx: null,
  lata: null,
  loc_state: null,
  rc_abbre: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

