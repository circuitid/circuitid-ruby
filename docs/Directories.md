# CircuitID::Directories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **type** | **Object** |  |  |
| **groups** | **Object** |  | [optional] |
| **announcement** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Directories.new(
  name: null,
  type: null,
  groups: null,
  announcement: null
)
```

