# CircuitID::MessagebrandsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **brand_id** | **String** |  | [optional] |
| **ein** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **order** | **String** | ObjectId (unique 12 bytes ID) |  |
| **brand_relationship** | **String** |  | [optional] |
| **vertical** | **String** |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **csp_id** | **String** |  | [optional] |
| **ein_issuing_country** | **String** |  | [optional] |
| **universal_ein** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::MessagebrandsCreateOrPatch.new(
  name: null,
  brand_id: null,
  ein: null,
  user: null,
  order: null,
  brand_relationship: null,
  vertical: null,
  entity_type: null,
  csp_id: null,
  ein_issuing_country: null,
  universal_ein: null
)
```

