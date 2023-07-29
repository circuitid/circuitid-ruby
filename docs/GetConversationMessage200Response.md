# CircuitID::GetConversationMessage200Response

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
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetConversationMessage200Response.new(
  conversation: null,
  from: null,
  from_number: null,
  to: null,
  text: null,
  direction: null,
  attachments: null,
  reference_id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

