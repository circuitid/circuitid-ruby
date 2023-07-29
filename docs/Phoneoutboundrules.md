# CircuitID::Phoneoutboundrules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **outbound_caller_id** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Phoneoutboundrules.new(
  name: null,
  description: null,
  status: null,
  outbound_caller_id: null
)
```

