# CircuitID::Customers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **website_url** | **String** |  | [optional] |
| **logo** | **String** |  | [optional] |
| **credit** | **Integer** |  | [optional][default to 0] |
| **admin_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **billing_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **call_recording_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **support_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **automatic_refill_amount** | **Integer** |  | [optional][default to 0] |
| **low_balance_alert_amount** | **Integer** |  | [optional][default to 0] |
| **international_calling** | **Integer** |  | [optional][default to INTERNATIONAL_CALLING::N0] |
| **created_by_ip** | **String** |  | [optional] |
| **media_bypass** | **Integer** |  | [optional][default to MEDIA_BYPASS::N0] |
| **account_lock** | **Integer** |  | [optional][default to ACCOUNT_LOCK::N1] |
| **call_recording** | **Integer** |  | [optional][default to CALL_RECORDING::N0] |
| **cdr_retention** | **Integer** |  | [optional][default to 12] |
| **cnam_look_ups** | **Integer** |  | [optional][default to CNAM_LOOK_UPS::N0] |
| **hold_music** | **Integer** |  | [optional][default to HOLD_MUSIC::N0] |
| **transcribe_calls** | **Integer** |  | [optional] |
| **max_outbound_call_rate** | **Integer** |  | [optional][default to 1] |
| **default_bill_method** | **String** |  | [default to &#39;credit&#39;] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Customers.new(
  name: null,
  website_url: null,
  logo: null,
  credit: null,
  admin_user_id: null,
  billing_user_id: null,
  call_recording_user_id: null,
  support_user_id: null,
  automatic_refill_amount: null,
  low_balance_alert_amount: null,
  international_calling: null,
  created_by_ip: null,
  media_bypass: null,
  account_lock: null,
  call_recording: null,
  cdr_retention: null,
  cnam_look_ups: null,
  hold_music: null,
  transcribe_calls: null,
  max_outbound_call_rate: null,
  default_bill_method: null
)
```

