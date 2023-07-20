# CircuitIDAPIClient::Menus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **max_extension_length** | **Object** |  |  |
| **speech_recognition** | **Object** |  | [optional] |
| **directory** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **greeting_type** | **Object** |  |  |
| **greeting_tts** | **Object** |  | [optional] |
| **menu_voice** | **Object** |  | [optional] |
| **exit_sound** | **Object** |  | [optional] |
| **transfer_announcement** | **Object** |  | [optional] |
| **max_failures** | **Object** |  | [optional] |
| **max_timeouts** | **Object** |  | [optional] |
| **timeout** | **Object** |  | [optional] |
| **touch_tone_terminators** | **Object** |  | [optional] |
| **timeschedule** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **destination_type** | **Object** |  | [optional] |
| **destination** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **call_forwarding_destination** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Menus.new(
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
  call_forwarding_destination: null
)
```

