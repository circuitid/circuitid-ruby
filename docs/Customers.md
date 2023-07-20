# CircuitID::Customers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **status** | **Object** |  | [optional] |
| **website_url** | **Object** |  | [optional] |
| **logo** | **Object** |  | [optional] |
| **credit** | **Object** |  | [optional] |
| **admin_user_id** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **billing_user_id** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **call_recording_user_id** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **call_forwarding_call_limit** | **Object** |  | [optional] |
| **support_user_id** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **automatic_refill_amount** | **Object** |  | [optional] |
| **low_balance_alert_amount** | **Object** |  | [optional] |
| **low_balance_alert_at** | **Object** |  | [optional] |
| **low_balance_alert_count** | **Object** |  | [optional] |
| **last_automatic_refill_invoice** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **international_calling** | **Object** |  | [optional] |
| **created_by_ip** | **Object** |  | [optional] |
| **call_debug** | **Object** |  | [optional] |
| **media_bypass** | **Object** |  | [optional] |
| **account_lock** | **Object** |  | [optional] |
| **call_recording** | **Object** |  | [optional] |
| **cdr_retention** | **Object** |  | [optional] |
| **cnam_look_ups** | **Object** |  | [optional] |
| **hold_music** | **Object** |  | [optional] |
| **transcribe_calls** | **Object** |  | [optional] |
| **max_outbound_call_rate** | **Object** |  | [optional] |
| **default_bill_method** | **Object** |  |  |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Customers.new(
  name: null,
  status: null,
  website_url: null,
  logo: null,
  credit: null,
  admin_user_id: null,
  billing_user_id: null,
  call_recording_user_id: null,
  call_forwarding_call_limit: null,
  support_user_id: null,
  automatic_refill_amount: null,
  low_balance_alert_amount: null,
  low_balance_alert_at: null,
  low_balance_alert_count: null,
  last_automatic_refill_invoice: null,
  international_calling: null,
  created_by_ip: null,
  call_debug: null,
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

