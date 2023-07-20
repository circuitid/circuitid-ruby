# CircuitID::Faxes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **caller_id_number** | **Object** |  |  |
| **caller_destination** | **Object** |  |  |
| **pages** | **Object** |  | [optional] |
| **status_code** | **Object** |  | [optional] |
| **transfered_pages** | **Object** |  | [optional] |
| **status** | **Object** |  |  |
| **error** | **Object** |  | [optional] |
| **type** | **Object** |  |  |
| **order** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **file** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **contact** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **number** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **fax_account** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **retries** | **Object** |  | [optional] |
| **invoice** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **sender_email** | **Object** |  | [optional] |
| **sender_name** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Faxes.new(
  caller_id_number: null,
  caller_destination: null,
  pages: null,
  status_code: null,
  transfered_pages: null,
  status: null,
  error: null,
  type: null,
  order: null,
  file: null,
  contact: null,
  number: null,
  fax_account: null,
  retries: null,
  invoice: null,
  sender_email: null,
  sender_name: null
)
```

