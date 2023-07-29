# CircuitID::GetConferenceRoom200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **passcode** | **String** |  | [optional] |
| **dial_in_pin** | **Integer** |  | [optional] |
| **is_user_room** | **Boolean** |  | [optional] |
| **is_chat_room** | **Boolean** |  | [optional] |
| **lobby** | **Integer** |  | [optional][default to LOBBY::N0] |
| **require_passcode** | **Integer** |  | [optional][default to REQUIRE_PASSCODE::N0] |
| **share** | **String** |  | [optional] |
| **chatroom** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetConferenceRoom200Response.new(
  name: null,
  passcode: null,
  dial_in_pin: null,
  is_user_room: null,
  is_chat_room: null,
  lobby: null,
  require_passcode: null,
  share: null,
  chatroom: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

