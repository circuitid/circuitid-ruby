# CircuitID::UsertokensCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **expires_in_years** | **Integer** |  | [default to 1] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::UsertokensCreateOrPatch.new(
  name: null,
  user: null,
  expires_in_years: null,
  status: null
)
```

