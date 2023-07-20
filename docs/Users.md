# CircuitIDAPIClient::Users

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **Object** |  |  |
| **password** | **Object** |  |  |
| **sip_password** | **Object** |  |  |
| **turn_password** | **Object** |  | [optional] |
| **first** | **Object** |  |  |
| **last** | **Object** |  |  |
| **mobile_phone** | **Object** |  | [optional] |
| **business_phone** | **Object** |  | [optional] |
| **extension** | **Object** |  | [optional] |
| **custom_caller_id** | **Object** |  | [optional] |
| **job_title** | **Object** |  | [optional] |
| **department** | **Object** |  | [optional] |
| **office** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **avatar** | **Object** |  | [optional] |
| **language** | **Object** |  | [optional] |
| **is_primary** | **Object** |  | [optional] |
| **status** | **Object** |  | [optional] |
| **vm_greeting_type** | **Object** |  | [optional] |
| **vm_timeout** | **Object** |  | [optional] |
| **vm_file** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **vm_playback_number** | **Object** |  | [optional] |
| **pin** | **Object** |  | [optional] |
| **number** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **region** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **caller_id_number** | **Object** |  | [optional] |
| **admin_permission** | **Object** |  | [optional] |
| **billing_permission** | **Object** |  | [optional] |
| **phone_permission** | **Object** |  | [optional] |
| **agile_permission** | **Object** |  | [optional] |
| **job_server_permission** | **Object** |  | [optional] |
| **media_server_permission** | **Object** |  | [optional] |
| **mail_server_permission** | **Object** |  | [optional] |
| **super_admin_permission** | **Object** |  | [optional] |
| **timezone** | **Object** |  |  |
| **vm_transcription** | **Object** |  | [optional] |
| **communication** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Users.new(
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
  status: null,
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
  agile_permission: null,
  job_server_permission: null,
  media_server_permission: null,
  mail_server_permission: null,
  super_admin_permission: null,
  timezone: null,
  vm_transcription: null,
  communication: null
)
```

