# CircuitID::FaxesCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **caller_destinations** | **Array&lt;String&gt;** |  |  |
| **number** | **String** | ObjectId (unique 12 bytes ID) |  |
| **fax_account** | **String** | ObjectId (unique 12 bytes ID) |  |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::FaxesCreateOrPatch.new(
  attachments: null,
  caller_destinations: null,
  number: null,
  fax_account: null
)
```

