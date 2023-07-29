# CircuitID::Firewall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **priority** | **Integer** |  |  |
| **type** | **String** |  |  |
| **target** | **String** |  |  |
| **direction** | **String** |  | [optional] |
| **param** | **String** |  |  |
| **hits** | **Integer** |  | [optional] |
| **ai** | **Integer** |  | [optional][default to AI::N0] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **notification_hits** | **Integer** |  | [optional][default to 1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Firewall.new(
  name: null,
  description: null,
  priority: null,
  type: null,
  target: null,
  direction: null,
  param: null,
  hits: null,
  ai: null,
  status: null,
  notification_hits: null
)
```

