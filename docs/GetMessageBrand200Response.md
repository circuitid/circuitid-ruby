# CircuitID::GetMessageBrand200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **brand_id** | **String** |  | [optional] |
| **ein** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **order** | **String** | ObjectId (unique 12 bytes ID) |  |
| **status** | **String** |  | [optional] |
| **brand_relationship** | **String** |  | [optional] |
| **vertical** | **String** |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **csp_id** | **String** |  | [optional] |
| **ein_issuing_country** | **String** |  | [optional] |
| **universal_ein** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetMessageBrand200Response.new(
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
  reference_id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

