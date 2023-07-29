# CircuitID::Directories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **type** | **String** |  |  |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **announcement** | **String** | ObjectId (unique 12 bytes ID) | [optional] |

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

