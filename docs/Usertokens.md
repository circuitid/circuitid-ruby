# CircuitID::Usertokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **user** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **token** | **Object** |  |  |
| **expires_in_years** | **Object** |  |  |
| **status** | **Object** |  | [optional] |

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

