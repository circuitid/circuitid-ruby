# CircuitID::DeveloperappsubscriptionsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developer_app** | **String** | ObjectId (unique 12 bytes ID) |  |
| **object** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **ref** | **String** |  | [optional] |
| **permissions** | **Object** |  | [optional] |
| **require_id** | **Integer** |  | [optional][default to REQUIRE_ID::N0] |
| **services** | **Array&lt;String&gt;** |  |  |
| **events** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::DeveloperappsubscriptionsCreateOrPatch.new(
  developer_app: null,
  object: null,
  ref: null,
  permissions: null,
  require_id: null,
  services: null,
  events: null
)
```

