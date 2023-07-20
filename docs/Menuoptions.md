# CircuitIDAPIClient::Menuoptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **digit** | **Object** |  |  |
| **menus** | **Object** |  |  |
| **destination_type** | **Object** |  |  |
| **destination** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **Object** |  | [optional] |
| **call_forwarding_destination** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Menuoptions.new(
  name: null,
  digit: null,
  menus: null,
  destination_type: null,
  destination: null,
  ref: null,
  call_forwarding_destination: null
)
```

