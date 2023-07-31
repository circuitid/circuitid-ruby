# CircuitID::ConversationsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **status** | **String** |  | [default to &#39;open&#39;] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::ConversationsCreateOrPatch.new(
  number: null,
  status: null
)
```

