# CircuitID::GetConversation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | **Array&lt;Object&gt;** |  | [optional] |
| **number** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **channel** | **String** |  |  |
| **ref** | **String** |  |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) |  |
| **status** | **String** |  | [default to &#39;open&#39;] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetConversation200Response.new(
  contacts: null,
  number: null,
  channel: null,
  ref: null,
  object: null,
  status: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

