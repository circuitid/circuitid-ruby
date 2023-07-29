# CircuitID::GetAnnouncement200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** |  |  |
| **type** | **String** |  |  |
| **voice** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetAnnouncement200Response.new(
  attachments: null,
  name: null,
  type: null,
  voice: null,
  text: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

