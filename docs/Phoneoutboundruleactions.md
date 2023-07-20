# CircuitID::Phoneoutboundruleactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** |  |  |
| **group** | **Object** | ObjectId (unique 12 bytes ID) | [optional] |
| **phoneoutboundrule** | **Object** | ObjectId (unique 12 bytes ID) |  |
| **status** | **Object** |  | [optional] |
| **priority** | **Object** |  |  |
| **starting_chars** | **Object** |  | [optional] |
| **contains** | **Object** |  | [optional] |
| **length_type** | **Object** |  | [optional] |
| **length** | **Object** |  | [optional] |
| **append_chars** | **Object** |  | [optional] |
| **prepend_chars** | **Object** |  | [optional] |
| **range_start** | **Object** |  | [optional] |
| **range_end** | **Object** |  | [optional] |
| **remove_starting_chars** | **Object** |  | [optional] |
| **remove_ending_chars** | **Object** |  | [optional] |
| **route** | **Object** |  |  |
| **routing_type** | **Object** |  | [optional] |

## Example

```ruby
require 'circuitid-ruby'

instance = CircuitID::Phoneoutboundruleactions.new(
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

