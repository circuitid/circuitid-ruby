# CircuitID::GetCallQueue200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **strategy** | **String** |  |  |
| **announce_position** | **Integer** |  | [optional] |
| **moh** | **String** |  | [default to &#39;deafult&#39;] |
| **caller_resume_timeout** | **Integer** |  | [default to 3600] |
| **max_wait_time** | **Integer** |  | [default to 300] |
| **max_wait_time_no_agent** | **Integer** |  | [default to 300] |
| **max_no_answer** | **Integer** |  | [default to 1000000] |
| **no_answer_delay_timeout** | **Integer** |  | [optional][default to 60] |
| **reject_timeout** | **Integer** |  | [optional][default to 60] |
| **busy_timeout** | **Integer** |  | [optional][default to 60] |
| **wrap_up_timeout** | **Integer** |  | [optional][default to 10] |
| **time_based_score** | **String** |  | [default to &#39;queue&#39;] |
| **tier_rules_apply** | **Boolean** |  | [default to false] |
| **tier_rule_no_agent_no_wait** | **Boolean** |  | [default to true] |
| **tier_rule_wait_second** | **Integer** |  | [optional][default to 300] |
| **tier_rule_wait_multiply_level** | **Boolean** |  | [default to true] |
| **abandoned_resume_allowed** | **Boolean** |  | [default to true] |
| **discard_abandoned_after** | **Integer** |  | [optional][default to 14400] |
| **max_wait_time_no_agent_time_reached** | **Integer** |  | [default to 5] |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetCallQueue200Response.new(
  name: null,
  strategy: null,
  announce_position: null,
  moh: null,
  caller_resume_timeout: null,
  max_wait_time: null,
  max_wait_time_no_agent: null,
  max_no_answer: null,
  no_answer_delay_timeout: null,
  reject_timeout: null,
  busy_timeout: null,
  wrap_up_timeout: null,
  time_based_score: null,
  tier_rules_apply: null,
  tier_rule_no_agent_no_wait: null,
  tier_rule_wait_second: null,
  tier_rule_wait_multiply_level: null,
  abandoned_resume_allowed: null,
  discard_abandoned_after: null,
  max_wait_time_no_agent_time_reached: null,
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

