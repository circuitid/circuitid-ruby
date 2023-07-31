# CircuitID::Developerapps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **visibility** | **String** |  |  |
| **require_id** | **Integer** |  | [optional][default to REQUIRE_ID::N0] |
| **is_free** | **Integer** |  | [optional][default to IS_FREE::N1] |
| **fee_description** | **String** |  | [optional] |
| **integration_type** | **String** |  |  |
| **services** | **Array&lt;String&gt;** |  |  |
| **events** | **Array&lt;String&gt;** |  | [optional] |
| **user** | **String** | ObjectId (unique 12 bytes ID) |  |
| **webhook_url** | **String** |  | [optional] |
| **terms_of_service_url** | **String** |  | [optional] |
| **privacy_policy_url** | **String** |  | [optional] |
| **permissions** | **Object** |  | [optional] |
| **webhook_auth_type** | **String** |  | [optional] |
| **webhook_username** | **String** |  | [optional] |
| **webhook_password** | **String** |  | [optional] |
| **webhook_token_name** | **String** |  | [optional] |
| **webhook_token** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Developerapps.new(
  name: null,
  description: null,
  type: null,
  visibility: null,
  require_id: null,
  is_free: null,
  fee_description: null,
  integration_type: null,
  services: null,
  events: null,
  user: null,
  webhook_url: null,
  terms_of_service_url: null,
  privacy_policy_url: null,
  permissions: null,
  webhook_auth_type: null,
  webhook_username: null,
  webhook_password: null,
  webhook_token_name: null,
  webhook_token: null
)
```

