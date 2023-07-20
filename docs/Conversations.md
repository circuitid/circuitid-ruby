# CircuitID::Conversations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | **Object** |  | [optional] |
| **number** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **channel** | **Object** |  |  |
| **ref** | **Object** |  |  |
| **object** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **status** | **Object** |  |  |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Conversations.new(
  contacts: null,
  number: null,
  channel: null,
  ref: null,
  object: null,
  status: null
)
```

