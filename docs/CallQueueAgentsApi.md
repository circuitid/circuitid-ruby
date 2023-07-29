# CircuitID::CallQueueAgentsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_queue_agent**](CallQueueAgentsApi.md#create_call_queue_agent) | **POST** /callqueueagents | Create a new object |
| [**find_call_queue_agents**](CallQueueAgentsApi.md#find_call_queue_agents) | **GET** /callqueueagents | Find multiple objects |
| [**get_call_queue_agent**](CallQueueAgentsApi.md#get_call_queue_agent) | **GET** /callqueueagents/{id} | Get object by id |
| [**patch_call_queue_agent**](CallQueueAgentsApi.md#patch_call_queue_agent) | **PATCH** /callqueueagents/{id} | Patch object&#39;s data |
| [**remove_call_queue_agent**](CallQueueAgentsApi.md#remove_call_queue_agent) | **DELETE** /callqueueagents/{id} | Delete object by id |


## create_call_queue_agent

> <GetCallQueueAgent200Response> create_call_queue_agent(callqueueagents)

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

api_instance = CircuitID::CallQueueAgentsApi.new
callqueueagents = CircuitID::Callqueueagents.new({callqueue: 'callqueue_example', user: 'user_example', priority: 37, tier: 37}) # Callqueueagents | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_call_queue_agent(callqueueagents)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->create_call_queue_agent: #{e}"
end
```

#### Using the create_call_queue_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueueAgent200Response>, Integer, Hash)> create_call_queue_agent_with_http_info(callqueueagents)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_call_queue_agent_with_http_info(callqueueagents)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueueAgent200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->create_call_queue_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callqueueagents** | [**Callqueueagents**](Callqueueagents.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetCallQueueAgent200Response**](GetCallQueueAgent200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_call_queue_agents

> <FindCallQueueAgents200Response> find_call_queue_agents(opts)

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

api_instance = CircuitID::CallQueueAgentsApi.new
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
  result = api_instance.find_call_queue_agents(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->find_call_queue_agents: #{e}"
end
```

#### Using the find_call_queue_agents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindCallQueueAgents200Response>, Integer, Hash)> find_call_queue_agents_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_call_queue_agents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindCallQueueAgents200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->find_call_queue_agents_with_http_info: #{e}"
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

[**FindCallQueueAgents200Response**](FindCallQueueAgents200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_call_queue_agent

> <GetCallQueueAgent200Response> get_call_queue_agent(id)

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

api_instance = CircuitID::CallQueueAgentsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_call_queue_agent(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->get_call_queue_agent: #{e}"
end
```

#### Using the get_call_queue_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueueAgent200Response>, Integer, Hash)> get_call_queue_agent_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_call_queue_agent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueueAgent200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->get_call_queue_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetCallQueueAgent200Response**](GetCallQueueAgent200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_call_queue_agent

> <GetCallQueueAgent200Response> patch_call_queue_agent(id, callqueueagents)

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

api_instance = CircuitID::CallQueueAgentsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
callqueueagents = CircuitID::Callqueueagents.new({callqueue: 'callqueue_example', user: 'user_example', priority: 37, tier: 37}) # Callqueueagents | The request data.

begin
  # Patch object's data
  result = api_instance.patch_call_queue_agent(id, callqueueagents)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->patch_call_queue_agent: #{e}"
end
```

#### Using the patch_call_queue_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueueAgent200Response>, Integer, Hash)> patch_call_queue_agent_with_http_info(id, callqueueagents)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_call_queue_agent_with_http_info(id, callqueueagents)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueueAgent200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->patch_call_queue_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **callqueueagents** | [**Callqueueagents**](Callqueueagents.md) | The request data. |  |

### Return type

[**GetCallQueueAgent200Response**](GetCallQueueAgent200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_call_queue_agent

> <GetCallQueueAgent200Response> remove_call_queue_agent(id)

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

api_instance = CircuitID::CallQueueAgentsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_call_queue_agent(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->remove_call_queue_agent: #{e}"
end
```

#### Using the remove_call_queue_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallQueueAgent200Response>, Integer, Hash)> remove_call_queue_agent_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_call_queue_agent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallQueueAgent200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CallQueueAgentsApi->remove_call_queue_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetCallQueueAgent200Response**](GetCallQueueAgent200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

