# CircuitID::VirtualextensionsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **extension** | **Integer** |  |  |
| **phoneinboundrule** | **String** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::VirtualextensionsCreateOrPatch.new(
  name: null,
  extension: null,
  phoneinboundrule: null
)
```

