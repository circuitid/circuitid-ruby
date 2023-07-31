# CircuitID::GetPhoneInboundRuleAction200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **phoneinboundrule** | **String** | ObjectId (unique 12 bytes ID) |  |
| **timeschedule** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **timeout** | **Integer** |  | [optional] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **priority** | **Integer** |  | [default to 1] |
| **destination_type** | **String** |  |  |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetPhoneInboundRuleAction200Response.new(
  name: null,
  phoneinboundrule: null,
  timeschedule: null,
  timeout: null,
  status: null,
  priority: null,
  destination_type: null,
  destination: null,
  call_forwarding_destination: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

