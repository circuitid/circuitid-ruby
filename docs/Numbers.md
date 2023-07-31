# CircuitID::Numbers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **in_use** | **Integer** |  | [optional][default to IN_USE::N1] |
| **name** | **String** |  |  |
| **country_code** | **String** |  |  |
| **amount** | **Integer** |  | [optional] |
| **per_minute_rate** | **Integer** |  | [optional] |
| **fax** | **Integer** |  | [optional][default to FAX::N0] |
| **voice** | **Integer** |  | [optional][default to VOICE::N0] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **sms** | **Integer** |  | [optional][default to SMS::N0] |
| **mms** | **Integer** |  | [optional][default to MMS::N0] |
| **directory_listing** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **caller_name** | **String** |  | [optional] |
| **e911** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **message_campaign** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **message_class** | **String** |  | [optional] |
| **message_type** | **String** |  | [optional] |
| **e911_supported** | **Integer** |  | [optional][default to E911_SUPPORTED::N0] |
| **caller_name_supported** | **Integer** |  | [optional][default to CALLER_NAME_SUPPORTED::N0] |
| **directory_listing_supported** | **Integer** |  | [optional][default to DIRECTORY_LISTING_SUPPORTED::N0] |
| **messaging_supported** | **Integer** |  | [optional][default to MESSAGING_SUPPORTED::N0] |
| **destination_type** | **String** |  | [default to &#39;park&#39;] |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **String** |  | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Numbers.new(
  in_use: null,
  name: null,
  country_code: null,
  amount: null,
  per_minute_rate: null,
  fax: null,
  voice: null,
  status: null,
  sms: null,
  mms: null,
  directory_listing: null,
  caller_name: null,
  e911: null,
  message_campaign: null,
  message_class: null,
  message_type: null,
  e911_supported: null,
  caller_name_supported: null,
  directory_listing_supported: null,
  messaging_supported: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null
)
```

