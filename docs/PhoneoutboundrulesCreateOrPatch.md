# CircuitID::PhoneoutboundrulesCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **outbound_caller_id** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::PhoneoutboundrulesCreateOrPatch.new(
  name: null,
  description: null,
  status: null,
  outbound_caller_id: null
)
```

