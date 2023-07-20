# CircuitID::Phoneinboundruleactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **phoneinboundrule** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **timeschedule** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **timeout** | **Object** |  | [optional] |
| **status** | **Object** |  | [optional] |
| **priority** | **Object** |  |  |
| **destination_type** | **Object** |  |  |
| **destination** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **call_forwarding_destination** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Phoneinboundruleactions.new(
  name: null,
  phoneinboundrule: null,
  timeschedule: null,
  timeout: null,
  status: null,
  priority: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null
)
```

