# CircuitID::ResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **code** | **Integer** |  | [optional] |
| **class_name** | **String** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::ResponseError.new(
  name: null,
  message: null,
  code: null,
  class_name: null,
  errors: null
)
```

