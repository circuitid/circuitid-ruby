# CircuitID::Faxes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **caller_destinations** | **Array&lt;String&gt;** |  |  |
| **caller_id_number** | **String** |  |  |
| **caller_destination** | **String** |  |  |
| **pages** | **Integer** |  | [optional][default to 0] |
| **status_code** | **Integer** |  | [optional] |
| **transfered_pages** | **Integer** |  | [optional][default to 0] |
| **status** | **String** |  | [default to &#39;processing&#39;] |
| **error** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **file** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **contact** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **number** | **String** | ObjectId (unique 12 bytes ID) |  |
| **fax_account** | **String** | ObjectId (unique 12 bytes ID) |  |
| **retries** | **Integer** |  | [optional][default to 0] |
| **invoice** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **sender_email** | **String** |  | [optional] |
| **sender_name** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Faxes.new(
  attachments: null,
  caller_destinations: null,
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

