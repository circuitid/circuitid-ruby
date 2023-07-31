# CircuitID::GetTimeSchedule200Response

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

