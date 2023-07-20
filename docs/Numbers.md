# CircuitID::Numbers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **in_use** | **Object** |  | [optional] |
| **name** | **Object** |  |  |
| **country_code** | **Object** |  |  |
| **amount** | **Object** |  | [optional] |
| **per_minute_rate** | **Object** |  | [optional] |
| **provider** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **original_provider** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **provider_order_id** | **Object** |  | [optional] |
| **fax** | **Object** |  | [optional] |
| **voice** | **Object** |  | [optional] |
| **status** | **Object** |  | [optional] |
| **sms** | **Object** |  | [optional] |
| **mms** | **Object** |  | [optional] |
| **change_region_order_id** | **Object** |  | [optional] |
| **change_region_order_date** | **Object** |  | [optional] |
| **directory_listing** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **directory_listing_order_id** | **Object** |  | [optional] |
| **directory_listing_order_date** | **Object** |  | [optional] |
| **caller_name** | **Object** |  | [optional] |
| **caller_name_order_id** | **Object** |  | [optional] |
| **caller_name_order_date** | **Object** |  | [optional] |
| **e911** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **e911_order_id** | **Object** |  | [optional] |
| **e911_order_date** | **Object** |  | [optional] |
| **message_campaign** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **message_class** | **Object** |  | [optional] |
| **message_type** | **Object** |  | [optional] |
| **message_campaign_order_id** | **Object** |  | [optional] |
| **message_campaign_order_date** | **Object** |  | [optional] |
| **e911_supported** | **Object** |  | [optional] |
| **caller_name_supported** | **Object** |  | [optional] |
| **directory_listing_supported** | **Object** |  | [optional] |
| **messaging_supported** | **Object** |  | [optional] |
| **destination_type** | **Object** |  |  |
| **destination** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **call_forwarding_destination** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Numbers.new(
  in_use: null,
  name: null,
  country_code: null,
  amount: null,
  per_minute_rate: null,
  provider: null,
  original_provider: null,
  provider_order_id: null,
  fax: null,
  voice: null,
  status: null,
  sms: null,
  mms: null,
  change_region_order_id: null,
  change_region_order_date: null,
  directory_listing: null,
  directory_listing_order_id: null,
  directory_listing_order_date: null,
  caller_name: null,
  caller_name_order_id: null,
  caller_name_order_date: null,
  e911: null,
  e911_order_id: null,
  e911_order_date: null,
  message_campaign: null,
  message_class: null,
  message_type: null,
  message_campaign_order_id: null,
  message_campaign_order_date: null,
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

