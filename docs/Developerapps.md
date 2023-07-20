# CircuitID::Developerapps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **description** | **Object** |  | [optional] |
| **type** | **Object** |  |  |
| **visibility** | **Object** |  |  |
| **require_id** | **Object** |  | [optional] |
| **is_free** | **Object** |  | [optional] |
| **fee_description** | **Object** |  | [optional] |
| **integration_type** | **Object** |  |  |
| **services** | **Object** |  |  |
| **events** | **Object** |  | [optional] |
| **user** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **webhook_url** | **Object** |  | [optional] |
| **terms_of_service_url** | **Object** |  | [optional] |
| **privacy_policy_url** | **Object** |  | [optional] |
| **permissions** | **Object** |  | [optional] |
| **status** | **Object** |  |  |
| **webhook_auth_type** | **Object** |  | [optional] |
| **webhook_username** | **Object** |  | [optional] |
| **webhook_password** | **Object** |  | [optional] |
| **webhook_token_name** | **Object** |  | [optional] |
| **webhook_token** | **Object** |  | [optional] |

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
  status: null,
  webhook_auth_type: null,
  webhook_username: null,
  webhook_password: null,
  webhook_token_name: null,
  webhook_token: null
)
```

