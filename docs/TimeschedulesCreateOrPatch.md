# CircuitID::TimeschedulesCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **timezone** | **String** |  | [default to &#39;America/New_York&#39;] |
| **sunday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |
| **monday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |
| **tuesday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |
| **wednesday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |
| **thursday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |
| **friday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |
| **saturday** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  |  |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::TimeschedulesCreateOrPatch.new(
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

