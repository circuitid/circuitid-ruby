# CircuitID::GetServer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **host** | **String** |  |  |
| **port** | **Integer** |  | [default to 5060] |
| **caller_id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **inbound_sip_trunking_order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **outbound_sip_trunking_order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **no_instant_ring_back** | **Integer** |  | [optional] |
| **bypass_media** | **Integer** |  | [optional][default to BYPASS_MEDIA::N0] |
| **disable_rtp_auto_adjust** | **Integer** |  | [optional][default to DISABLE_RTP_AUTO_ADJUST::N0] |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetServer200Response.new(
  name: null,
  host: null,
  port: null,
  caller_id: null,
  type: null,
  inbound_sip_trunking_order: null,
  outbound_sip_trunking_order: null,
  no_instant_ring_back: null,
  bypass_media: null,
  disable_rtp_auto_adjust: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

