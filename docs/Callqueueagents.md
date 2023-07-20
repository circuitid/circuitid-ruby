# CircuitID::Callqueueagents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callqueue** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **user** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **priority** | **Object** |  |  |
| **tier** | **Object** |  |  |

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

