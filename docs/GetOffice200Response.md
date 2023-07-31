# CircuitID::GetOffice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **street_number** | **String** |  |  |
| **street_name** | **String** |  |  |
| **pre_direction** | **String** |  | [optional] |
| **street_suffix** | **String** |  |  |
| **city** | **String** |  |  |
| **state** | **String** |  | [optional] |
| **zip_code** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **country** | **String** |  |  |
| **region** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetOffice200Response.new(
  name: null,
  street_number: null,
  street_name: null,
  pre_direction: null,
  street_suffix: null,
  city: null,
  state: null,
  zip_code: null,
  address2: null,
  country: null,
  region: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

