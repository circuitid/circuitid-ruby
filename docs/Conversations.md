# CircuitID::Conversations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | **Array&lt;Object&gt;** |  | [optional] |
| **number** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **channel** | **String** |  |  |
| **ref** | **String** |  |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) |  |
| **status** | **String** |  | [default to &#39;open&#39;] |

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

