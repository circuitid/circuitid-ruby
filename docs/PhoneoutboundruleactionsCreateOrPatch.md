# CircuitID::PhoneoutboundruleactionsCreateOrPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **group** | **String** | ObjectId (unique 12 bytes ID) | [optional] |
| **phoneoutboundrule** | **String** | ObjectId (unique 12 bytes ID) |  |
| **status** | **Integer** |  | [optional][default to STATUS::N1] |
| **priority** | **Integer** |  | [default to 1] |
| **starting_chars** | **String** |  | [optional] |
| **contains** | **String** |  | [optional] |
| **length_type** | **String** |  | [optional] |
| **length** | **Integer** |  | [optional] |
| **append_chars** | **String** |  | [optional] |
| **prepend_chars** | **String** |  | [optional] |
| **range_start** | **Integer** |  | [optional] |
| **range_end** | **Integer** |  | [optional] |
| **remove_starting_chars** | **Integer** |  | [optional] |
| **remove_ending_chars** | **Integer** |  | [optional] |
| **route** | **String** |  | [default to &#39;default&#39;] |
| **routing_type** | **String** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::PhoneoutboundruleactionsCreateOrPatch.new(
  name: null,
  group: null,
  phoneoutboundrule: null,
  status: null,
  priority: null,
  starting_chars: null,
  contains: null,
  length_type: null,
  length: null,
  append_chars: null,
  prepend_chars: null,
  range_start: null,
  range_end: null,
  remove_starting_chars: null,
  remove_ending_chars: null,
  route: null,
  routing_type: null
)
```

