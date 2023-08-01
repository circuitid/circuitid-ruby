# CircuitID::Timeschedules

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

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Timeschedules.new(
  name: null,
  timezone: null,
  sunday: null,
  monday: null,
  tuesday: null,
  wednesday: null,
  thursday: null,
  friday: null,
  saturday: null
)
```

