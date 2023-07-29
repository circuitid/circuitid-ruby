# CircuitID::Groups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Groups.new(
  name: null,
  description: null,
  status: null
)
```

