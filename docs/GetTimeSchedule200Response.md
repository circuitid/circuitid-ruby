# CircuitID::GetTimeSchedule200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **timezone** | **String** |  | [default to &#39;America/New_York&#39;] |
| **sunday** | **Object** |  |  |
| **monday** | **Object** |  |  |
| **tuesday** | **Object** |  |  |
| **wednesday** | **Object** |  |  |
| **thursday** | **Object** |  |  |
| **friday** | **Object** |  |  |
| **saturday** | **Object** |  |  |
| **created_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **updated_by_user_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::GetTimeSchedule200Response.new(
  name: null,
  timezone: null,
  sunday: null,
  monday: null,
  tuesday: null,
  wednesday: null,
  thursday: null,
  friday: null,
  saturday: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

