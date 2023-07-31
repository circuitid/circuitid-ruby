# CircuitID::FirewallCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **target** | **String** |  |  |
| **direction** | **String** |  | [optional] |
| **param** | **String** |  |  |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::FirewallCreateOrPatch.new(
  name: null,
  description: null,
  type: null,
  target: null,
  direction: null,
  param: null,
  status: null
)
```

