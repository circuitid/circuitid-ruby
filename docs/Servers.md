# CircuitID::Servers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **host** | **Object** |  |  |
| **port** | **Object** |  |  |
| **caller_id** | **Object** |  | [optional] |
| **type** | **Object** |  |  |
| **domestic_outbound_call_limit** | **Object** |  |  |
| **domestic_inbound_call_limit** | **Object** |  |  |
| **international_outbound_call_limit** | **Object** |  |  |
| **toll_free_channel_limit** | **Object** |  |  |
| **inbound_sip_trunking_order** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **outbound_sip_trunking_order** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **no_instant_ring_back** | **Object** |  | [optional] |
| **bypass_media** | **Object** |  | [optional] |
| **disable_rtp_auto_adjust** | **Object** |  | [optional] |

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

