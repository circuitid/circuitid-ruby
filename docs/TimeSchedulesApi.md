# CircuitID::TimeSchedulesApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_time_schedule**](TimeSchedulesApi.md#create_time_schedule) | **POST** /timeschedules | Create a new object |
| [**find_time_schedules**](TimeSchedulesApi.md#find_time_schedules) | **GET** /timeschedules | Find multiple objects |
| [**get_time_schedule**](TimeSchedulesApi.md#get_time_schedule) | **GET** /timeschedules/{id} | Get object by id |
| [**patch_time_schedule**](TimeSchedulesApi.md#patch_time_schedule) | **PATCH** /timeschedules/{id} | Patch object&#39;s data |
| [**remove_time_schedule**](TimeSchedulesApi.md#remove_time_schedule) | **DELETE** /timeschedules/{id} | Delete object by id |


## create_time_schedule

> <GetTimeSchedule200Response> create_time_schedule(timeschedules_create_or_patch)

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

api_instance = CircuitID::TimeSchedulesApi.new
timeschedules_create_or_patch = CircuitID::TimeschedulesCreateOrPatch.new({name: 'name_example', timezone: 'Europe/Andorra', sunday: { key: [3.56]}, monday: { key: [3.56]}, tuesday: { key: [3.56]}, wednesday: { key: [3.56]}, thursday: { key: [3.56]}, friday: { key: [3.56]}, saturday: { key: [3.56]}}) # TimeschedulesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_time_schedule(timeschedules_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->create_time_schedule: #{e}"
end
```

#### Using the create_time_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTimeSchedule200Response>, Integer, Hash)> create_time_schedule_with_http_info(timeschedules_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_time_schedule_with_http_info(timeschedules_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTimeSchedule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->create_time_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timeschedules_create_or_patch** | [**TimeschedulesCreateOrPatch**](TimeschedulesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetTimeSchedule200Response**](GetTimeSchedule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_time_schedules

> <FindTimeSchedules200Response> find_time_schedules(opts)

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

api_instance = CircuitID::TimeSchedulesApi.new
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
  result = api_instance.find_time_schedules(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->find_time_schedules: #{e}"
end
```

#### Using the find_time_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindTimeSchedules200Response>, Integer, Hash)> find_time_schedules_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_time_schedules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindTimeSchedules200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->find_time_schedules_with_http_info: #{e}"
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

[**FindTimeSchedules200Response**](FindTimeSchedules200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_time_schedule

> <GetTimeSchedule200Response> get_time_schedule(id)

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

api_instance = CircuitID::TimeSchedulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_time_schedule(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->get_time_schedule: #{e}"
end
```

#### Using the get_time_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTimeSchedule200Response>, Integer, Hash)> get_time_schedule_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_time_schedule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTimeSchedule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->get_time_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetTimeSchedule200Response**](GetTimeSchedule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_time_schedule

> <GetTimeSchedule200Response> patch_time_schedule(id, timeschedules_create_or_patch)

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

api_instance = CircuitID::TimeSchedulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
timeschedules_create_or_patch = CircuitID::TimeschedulesCreateOrPatch.new({name: 'name_example', timezone: 'Europe/Andorra', sunday: { key: [3.56]}, monday: { key: [3.56]}, tuesday: { key: [3.56]}, wednesday: { key: [3.56]}, thursday: { key: [3.56]}, friday: { key: [3.56]}, saturday: { key: [3.56]}}) # TimeschedulesCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_time_schedule(id, timeschedules_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->patch_time_schedule: #{e}"
end
```

#### Using the patch_time_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTimeSchedule200Response>, Integer, Hash)> patch_time_schedule_with_http_info(id, timeschedules_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_time_schedule_with_http_info(id, timeschedules_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTimeSchedule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->patch_time_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **timeschedules_create_or_patch** | [**TimeschedulesCreateOrPatch**](TimeschedulesCreateOrPatch.md) | The request data. |  |

### Return type

[**GetTimeSchedule200Response**](GetTimeSchedule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_time_schedule

> <GetTimeSchedule200Response> remove_time_schedule(id)

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

api_instance = CircuitID::TimeSchedulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_time_schedule(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->remove_time_schedule: #{e}"
end
```

#### Using the remove_time_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTimeSchedule200Response>, Integer, Hash)> remove_time_schedule_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_time_schedule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTimeSchedule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling TimeSchedulesApi->remove_time_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetTimeSchedule200Response**](GetTimeSchedule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

