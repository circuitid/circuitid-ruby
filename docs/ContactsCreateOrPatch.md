# CircuitID::ContactsCreateOrPatch

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

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::ContactsCreateOrPatch.new(
  email: null,
  first: null,
  last: null,
  mobile_phone: null,
  business_phone: null,
  fax_phone: null,
  extension: null,
  job_title: null,
  department: null,
  avatar: null
)
```

