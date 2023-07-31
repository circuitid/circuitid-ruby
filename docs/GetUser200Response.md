# CircuitID::GetUser200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **password** | **String** |  |  |
| **sip_password** | **String** |  |  |
| **turn_password** | **String** |  | [optional] |
| **first** | **String** |  |  |
| **last** | **String** |  |  |
| **mobile_phone** | **String** |  | [optional] |
| **business_phone** | **String** |  | [optional] |
| **extension** | **Integer** |  | [optional] |
| **custom_caller_id** | **Integer** |  | [optional] |
| **job_title** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **office** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **avatar** | **String** |  | [optional] |
| **language** | **String** |  | [optional][default to &#39;en&#39;] |
| **is_primary** | **Integer** |  | [optional][default to IS_PRIMARY::N0] |
| **vm_greeting_type** | **String** |  | [optional][default to &#39;default&#39;] |
| **vm_timeout** | **Integer** |  | [optional][default to 20] |
| **vm_file** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **vm_playback_number** | **String** |  | [optional] |
| **pin** | **Integer** |  | [optional][default to 1234] |
| **number** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **region** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **caller_id_number** | **String** |  | [optional] |
| **admin_permission** | **String** |  | [optional] |
| **billing_permission** | **String** |  | [optional] |
| **phone_permission** | **String** |  | [optional] |
| **timezone** | **String** |  | [default to &#39;America/New_York&#39;] |
| **vm_transcription** | **Integer** |  | [optional][default to VM_TRANSCRIPTION::N0] |
| **communication** | [**Hash&lt;String, UsersCommunicationValue&gt;**](UsersCommunicationValue.md) |  | [optional] |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetUser200Response.new(
  email: null,
  password: null,
  sip_password: null,
  turn_password: null,
  first: null,
  last: null,
  mobile_phone: null,
  business_phone: null,
  extension: null,
  custom_caller_id: null,
  job_title: null,
  department: null,
  office: null,
  avatar: null,
  language: null,
  is_primary: null,
  vm_greeting_type: null,
  vm_timeout: null,
  vm_file: null,
  vm_playback_number: null,
  pin: null,
  number: null,
  region: null,
  caller_id_number: null,
  admin_permission: null,
  billing_permission: null,
  phone_permission: null,
  timezone: null,
  vm_transcription: null,
  communication: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

