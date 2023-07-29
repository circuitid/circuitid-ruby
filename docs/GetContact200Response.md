# CircuitID::GetContact200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **first** | **String** |  |  |
| **last** | **String** |  | [optional] |
| **mobile_phone** | **String** |  | [optional] |
| **business_phone** | **String** |  | [optional] |
| **fax_phone** | **String** |  | [optional] |
| **extension** | **Integer** |  | [optional] |
| **job_title** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetContact200Response.new(
  email: null,
  first: null,
  last: null,
  mobile_phone: null,
  business_phone: null,
  fax_phone: null,
  extension: null,
  job_title: null,
  department: null,
  avatar: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

