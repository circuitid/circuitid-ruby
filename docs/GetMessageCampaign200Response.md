# CircuitID::GetMessageCampaign200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **campaign_id** | **String** |  | [optional] |
| **brand_id** | **String** |  |  |
| **order** | **String** | ObjectId (unique 12 bytes ID) |  |
| **subscriber_optin** | **Integer** |  | [optional] |
| **subscriber_optout** | **Integer** |  | [optional] |
| **subscriber_help** | **Integer** |  | [optional] |
| **number_pool** | **Integer** |  | [optional] |
| **direct_lending** | **Integer** |  | [optional] |
| **embedded_link** | **Integer** |  | [optional] |
| **embedded_phone** | **Integer** |  | [optional] |
| **affiliate_marketing** | **Integer** |  | [optional] |
| **age_gated** | **Integer** |  | [optional] |
| **mnos** | **Object** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **use_case** | **String** |  | [optional] |
| **sub_use_cases** | **Array&lt;Object&gt;** |  | [optional] |
| **sample1** | **String** |  | [optional] |
| **sample2** | **String** |  | [optional] |
| **sample3** | **String** |  | [optional] |
| **sample4** | **String** |  | [optional] |
| **sample5** | **String** |  | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetMessageCampaign200Response.new(
  name: null,
  campaign_id: null,
  brand_id: null,
  order: null,
  subscriber_optin: null,
  subscriber_optout: null,
  subscriber_help: null,
  number_pool: null,
  direct_lending: null,
  embedded_link: null,
  embedded_phone: null,
  affiliate_marketing: null,
  age_gated: null,
  mnos: null,
  reference_id: null,
  use_case: null,
  sub_use_cases: null,
  sample1: null,
  sample2: null,
  sample3: null,
  sample4: null,
  sample5: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

