# CircuitID::GetFaxAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **order** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **inbound_notification** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **outbound_notification** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **number** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetFaxAccount200Response.new(
  name: null,
  order: null,
  inbound_notification: null,
  outbound_notification: null,
  number: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

