# CircuitIDAPIClient::Directories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **type** | **Object** |  |  |
| **groups** | **Object** |  | [optional] |
| **announcement** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Directories.new(
  name: null,
  type: null,
  groups: null,
  announcement: null
)
```

