# CircuitID::ConversationmessagesCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **text** | **String** |  | [optional] |
| **attachments** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::ConversationmessagesCreateOrPatch.new(
  conversation: null,
  text: null,
  attachments: null
)
```

