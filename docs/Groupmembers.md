# CircuitID::Groupmembers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | ObjectId (unique 12 bytes ID) |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) |  |
| **priority** | **Integer** |  | [optional] |
| **ref** | **String** |  |  |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Groupmembers.new(
  group: null,
  object: null,
  priority: null,
  ref: null
)
```

