# CircuitID::Usertokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **token** | **String** |  |  |
| **expires_in_years** | **Integer** |  | [default to 1] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Usertokens.new(
  name: null,
  user: null,
  token: null,
  expires_in_years: null,
  status: null
)
```

