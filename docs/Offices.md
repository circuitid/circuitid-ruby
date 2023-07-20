# CircuitIDAPIClient::Offices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **street_number** | **Object** |  |  |
| **street_name** | **Object** |  |  |
| **pre_direction** | **Object** |  | [optional] |
| **street_suffix** | **Object** |  |  |
| **city** | **Object** |  |  |
| **state** | **Object** |  | [optional] |
| **zip** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **zip_code** | **Object** |  | [optional] |
| **address2** | **Object** |  | [optional] |
| **country** | **Object** |  |  |
| **providers** | **Object** |  | [optional] |
| **region** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Offices.new(
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

