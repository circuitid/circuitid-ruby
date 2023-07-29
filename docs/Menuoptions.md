# CircuitID::Menuoptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **digit** | **Integer** |  |  |
| **menus** | **Object** |  |  |
| **destination_type** | **String** |  |  |
| **destination** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **String** |  | [optional] |
| **call_forwarding_destination** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Menuoptions.new(
  name: null,
  digit: null,
  menus: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null
)
```

