# CircuitID::GetMenu200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **max_extension_length** | **Integer** |  | [default to 4] |
| **speech_recognition** | **Integer** |  | [optional][default to SPEECH_RECOGNITION::N0] |
| **directory** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **greeting_type** | **String** |  |  |
| **greeting_tts** | **String** |  | [optional] |
| **menu_voice** | **String** |  | [optional] |
| **exit_sound** | **String** |  | [optional][default to &#39;default&#39;] |
| **transfer_announcement** | **String** |  | [optional][default to &#39;default&#39;] |
| **max_failures** | **Integer** |  | [optional][default to 3] |
| **max_timeouts** | **Integer** |  | [optional][default to 3] |
| **timeout** | **Integer** |  | [optional][default to 10] |
| **touch_tone_terminators** | **Integer** |  | [optional][default to TOUCH_TONE_TERMINATORS::N1] |
| **timeschedule** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **destination_type** | **String** |  | [optional] |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **String** |  | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetMenu200Response.new(
  name: null,
  max_extension_length: null,
  speech_recognition: null,
  directory: null,
  greeting_type: null,
  greeting_tts: null,
  menu_voice: null,
  exit_sound: null,
  transfer_announcement: null,
  max_failures: null,
  max_timeouts: null,
  timeout: null,
  touch_tone_terminators: null,
  timeschedule: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

