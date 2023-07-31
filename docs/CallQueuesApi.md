# CircuitID::CallQueuesApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_queue**](CallQueuesApi.md#create_call_queue) | **POST** /callqueues | Create a new object |
| [**find_call_queues**](CallQueuesApi.md#find_call_queues) | **GET** /callqueues | Find multiple objects |
| [**get_call_queue**](CallQueuesApi.md#get_call_queue) | **GET** /callqueues/{id} | Get object by id |
| [**patch_call_queue**](CallQueuesApi.md#patch_call_queue) | **PATCH** /callqueues/{id} | Patch object&#39;s data |
| [**remove_call_queue**](CallQueuesApi.md#remove_call_queue) | **DELETE** /callqueues/{id} | Delete object by id |


## create_call_queue

> <GetCallQueue200Response> create_call_queue(callqueues_create_or_patch)

Create a new object

Add a new object to the system.

### Examples

```ruby
require 'time'
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::CallQueuesApi.new
callqueues_create_or_patch = CircuitID::CallqueuesCreateOrPatch.new({name: 'name_example', strategy: 'ring-all', moh: 'moh_example', caller_resume_timeout: 37, max_wait_time: 37, max_wait_time_no_agent: 37, max_no_answer: 37, time_based_score: 'queue', tier_rules_apply: false, tier_rule_no_agent_no_wait: false, tier_rule_wait_multiply_level: false, abandoned_resume_allowed: false, max_wait_time_no_agent_time_reached: 37}) # CallqueuesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_call_queue(callqueues_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->create_call_queue: #{e}"
end
```

#### Using the create_call_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueue200Response>, Integer, Hash)> create_call_queue_with_http_info(callqueues_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_call_queue_with_http_info(callqueues_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueue200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->create_call_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callqueues_create_or_patch** | [**CallqueuesCreateOrPatch**](CallqueuesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetCallQueue200Response**](GetCallQueue200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_call_queues

> <FindCallQueues200Response> find_call_queues(opts)

Find multiple objects

Search and retrieve multiple objects simultaneously. 

### Examples

```ruby
require 'time'
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::CallQueuesApi.new
opts = {
  search: 'search_example', # String | Filter results by the specified value.
  limit: 56, # Integer | $limit will return only the number of results you specify.
  skip: 56, # Integer | $skip will skip the specified number of results.
  sort: { ... }, # Object | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
  select: ['inner_example'], # Array<String> | $select allows to pick which fields to include in the result.
  _or: [3.56], # Array<Object> | Find all records that match any of the given criteria.
  _and: [3.56] # Array<Object> | Find all records that match all of the given criteria.
}

begin
  # Find multiple objects
  result = api_instance.find_call_queues(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->find_call_queues: #{e}"
end
```

#### Using the find_call_queues_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindCallQueues200Response>, Integer, Hash)> find_call_queues_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_call_queues_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindCallQueues200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->find_call_queues_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Filter results by the specified value. | [optional] |
| **limit** | **Integer** | $limit will return only the number of results you specify. | [optional] |
| **skip** | **Integer** | $skip will skip the specified number of results. | [optional] |
| **sort** | [**Object**](.md) | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending). | [optional] |
| **select** | [**Array&lt;String&gt;**](String.md) | $select allows to pick which fields to include in the result. | [optional] |
| **_or** | [**Array&lt;Object&gt;**](Object.md) | Find all records that match any of the given criteria. | [optional] |
| **_and** | [**Array&lt;Object&gt;**](Object.md) | Find all records that match all of the given criteria. | [optional] |

### Return type

[**FindCallQueues200Response**](FindCallQueues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_call_queue

> <GetCallQueue200Response> get_call_queue(id)

Get object by id

Get an object from the REST API Endpoint by its unique id.

### Examples

```ruby
require 'time'
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::CallQueuesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_call_queue(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->get_call_queue: #{e}"
end
```

#### Using the get_call_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueue200Response>, Integer, Hash)> get_call_queue_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_call_queue_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueue200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->get_call_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetCallQueue200Response**](GetCallQueue200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_call_queue

> <GetCallQueue200Response> patch_call_queue(id, callqueues_create_or_patch)

Patch object's data

Make updates to specific fields within the record without replacing the entire dataset.

### Examples

```ruby
require 'time'
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::CallQueuesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
callqueues_create_or_patch = CircuitID::CallqueuesCreateOrPatch.new({name: 'name_example', strategy: 'ring-all', moh: 'moh_example', caller_resume_timeout: 37, max_wait_time: 37, max_wait_time_no_agent: 37, max_no_answer: 37, time_based_score: 'queue', tier_rules_apply: false, tier_rule_no_agent_no_wait: false, tier_rule_wait_multiply_level: false, abandoned_resume_allowed: false, max_wait_time_no_agent_time_reached: 37}) # CallqueuesCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_call_queue(id, callqueues_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->patch_call_queue: #{e}"
end
```

#### Using the patch_call_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueue200Response>, Integer, Hash)> patch_call_queue_with_http_info(id, callqueues_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_call_queue_with_http_info(id, callqueues_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueue200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->patch_call_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **callqueues_create_or_patch** | [**CallqueuesCreateOrPatch**](CallqueuesCreateOrPatch.md) | The request data. |  |

### Return type

[**GetCallQueue200Response**](GetCallQueue200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_call_queue

> <GetCallQueue200Response> remove_call_queue(id)

Delete object by id

Delete an object by id, removing it from the service.

### Examples

```ruby
require 'time'
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::CallQueuesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_call_queue(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->remove_call_queue: #{e}"
end
```

#### Using the remove_call_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueue200Response>, Integer, Hash)> remove_call_queue_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_call_queue_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueue200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueuesApi->remove_call_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetCallQueue200Response**](GetCallQueue200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

