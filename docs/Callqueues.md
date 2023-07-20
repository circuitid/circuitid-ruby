# CircuitIDAPIClient::Callqueues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **strategy** | **Object** |  |  |
| **announce_position** | **Object** |  | [optional] |
| **moh** | **Object** |  |  |
| **caller_resume_timeout** | **Object** |  |  |
| **max_wait_time** | **Object** |  |  |
| **max_wait_time_no_agent** | **Object** |  |  |
| **max_no_answer** | **Object** |  |  |
| **no_answer_delay_timeout** | **Object** |  | [optional] |
| **reject_timeout** | **Object** |  | [optional] |
| **busy_timeout** | **Object** |  | [optional] |
| **wrap_up_timeout** | **Object** |  | [optional] |
| **time_based_score** | **Object** |  |  |
| **tier_rules_apply** | **Object** |  |  |
| **tier_rule_no_agent_no_wait** | **Object** |  |  |
| **tier_rule_wait_second** | **Object** |  | [optional] |
| **tier_rule_wait_multiply_level** | **Object** |  |  |
| **abandoned_resume_allowed** | **Object** |  |  |
| **discard_abandoned_after** | **Object** |  | [optional] |
| **max_wait_time_no_agent_time_reached** | **Object** |  |  |

## Example

```ruby
require 'circuitid_ruby'

instance = CircuitIDAPIClient::Callqueues.new(
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
  max_wait_time_no_agent_time_reached: null
)
```

