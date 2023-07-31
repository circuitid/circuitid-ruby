# CircuitID::NumbersCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directory_listing** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **caller_name** | **String** |  | [optional] |
| **e911** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **message_campaign** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **destination_type** | **String** |  | [default to &#39;park&#39;] |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::NumbersCreateOrPatch.new(
  directory_listing: null,
  caller_name: null,
  e911: null,
  message_campaign: null,
  destination_type: null,
  destination: null,
  call_forwarding_destination: null
)
```

