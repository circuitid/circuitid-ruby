# CircuitIDAPIClient::Conferencerooms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **passcode** | **Object** |  | [optional] |
| **dial_in_pin** | **Object** |  | [optional] |
| **is_user_room** | **Object** |  | [optional] |
| **is_chat_room** | **Object** |  | [optional] |
| **lobby** | **Object** |  | [optional] |
| **require_passcode** | **Object** |  | [optional] |
| **share** | **Object** |  | [optional] |
| **chatroom** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Conferencerooms.new(
  name: null,
  passcode: null,
  dial_in_pin: null,
  is_user_room: null,
  is_chat_room: null,
  lobby: null,
  require_passcode: null,
  share: null,
  chatroom: null
)
```

