# CircuitID::Servers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **host** | **String** |  |  |
| **port** | **Integer** |  | [default to 5060] |
| **caller_id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **domestic_outbound_call_limit** | **Integer** |  | [default to 10] |
| **domestic_inbound_call_limit** | **Integer** |  | [default to 10] |
| **international_outbound_call_limit** | **Integer** |  | [default to 10] |
| **toll_free_channel_limit** | **Integer** |  | [default to 10] |
| **inbound_sip_trunking_order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **outbound_sip_trunking_order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **no_instant_ring_back** | **Integer** |  | [optional] |
| **bypass_media** | **Integer** |  | [optional][default to BYPASS_MEDIA::N0] |
| **disable_rtp_auto_adjust** | **Integer** |  | [optional][default to DISABLE_RTP_AUTO_ADJUST::N0] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Servers.new(
  name: null,
  host: null,
  port: null,
  caller_id: null,
  type: null,
  domestic_outbound_call_limit: null,
  domestic_inbound_call_limit: null,
  international_outbound_call_limit: null,
  toll_free_channel_limit: null,
  inbound_sip_trunking_order: null,
  outbound_sip_trunking_order: null,
  no_instant_ring_back: null,
  bypass_media: null,
  disable_rtp_auto_adjust: null
)
```

