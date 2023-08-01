# CircuitID::GetTimeSchedule200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **timezone** | **String** |  | [default to &#39;America/New_York&#39;] |
| **sunday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **monday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **tuesday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **wednesday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **thursday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **friday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **saturday** | [**TimeschedulesSunday**](TimeschedulesSunday.md) |  |  |
| **_id** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
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
  _id: null,
  created_by_user_id: null,
  updated_by_user_id: null,
  created_at: null,
  updated_at: null
)
```

