# CircuitIDAPIClient::Messagebrands

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **brand_id** | **Object** |  | [optional] |
| **ein** | **Object** |  |  |
| **user** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **order** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **status** | **Object** |  | [optional] |
| **brand_relationship** | **Object** |  | [optional] |
| **vertical** | **Object** |  | [optional] |
| **entity_type** | **Object** |  | [optional] |
| **csp_id** | **Object** |  | [optional] |
| **ein_issuing_country** | **Object** |  | [optional] |
| **universal_ein** | **Object** |  | [optional] |
| **reference_id** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Messagebrands.new(
  name: null,
  brand_id: null,
  ein: null,
  user: null,
  order: null,
  status: null,
  brand_relationship: null,
  vertical: null,
  entity_type: null,
  csp_id: null,
  ein_issuing_country: null,
  universal_ein: null,
  reference_id: null
)
```

