# CircuitID::Conversationmessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **from** | **Object** |  |  |
| **from_number** | **Object** |  |  |
| **to** | **Object** |  |  |
| **text** | **Object** |  | [optional] |
| **direction** | **Object** |  |  |
| **attachments** | **Object** |  | [optional] |
| **reference_id** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Conversationmessages.new(
  conversation: null,
  from: null,
  from_number: null,
  to: null,
  text: null,
  direction: null,
  attachments: null,
  reference_id: null
)
```

