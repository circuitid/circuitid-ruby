# CircuitID::Offices

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
| **zip** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **zip_code** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **country** | **String** |  |  |
| **providers** | **Object** |  | [optional] |
| **region** | **String** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Offices.new(
  name: null,
  street_number: null,
  street_name: null,
  pre_direction: null,
  street_suffix: null,
  city: null,
  state: null,
  zip: null,
  zip_code: null,
  address2: null,
  country: null,
  providers: null,
  region: null
)
```

