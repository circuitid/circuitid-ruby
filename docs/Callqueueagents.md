# CircuitID::Callqueueagents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callqueue** | **String** | ObjectId (unique 12 bytes ID) |  |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **priority** | **Integer** |  | [default to 1] |
| **tier** | **Integer** |  | [default to 1] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Callqueueagents.new(
  callqueue: null,
  user: null,
  priority: null,
  tier: null
)
```

