# CircuitID::Conversationmessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **from** | **Object** |  |  |
| **from_number** | **String** |  |  |
| **to** | **Array&lt;Object&gt;** |  |  |
| **text** | **String** |  | [optional] |
| **direction** | **String** |  |  |
| **attachments** | **Array&lt;Object&gt;** |  | [optional] |
| **reference_id** | **String** |  | [optional] |

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

