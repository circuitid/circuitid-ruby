# CircuitID::HolidaysApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_holiday**](HolidaysApi.md#create_holiday) | **POST** /holidays | Create a new object |
| [**find_holidays**](HolidaysApi.md#find_holidays) | **GET** /holidays | Find multiple objects |
| [**get_holiday**](HolidaysApi.md#get_holiday) | **GET** /holidays/{id} | Get object by id |
| [**patch_holiday**](HolidaysApi.md#patch_holiday) | **PATCH** /holidays/{id} | Patch object&#39;s data |
| [**remove_holiday**](HolidaysApi.md#remove_holiday) | **DELETE** /holidays/{id} | Delete object by id |


## create_holiday

> <GetHoliday200Response> create_holiday(holidays_create_or_patch)

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

api_instance = CircuitID::HolidaysApi.new
holidays_create_or_patch = CircuitID::HolidaysCreateOrPatch.new({name: 'name_example', object: 'object_example', object_ref: 'object_ref_example', date_time_ranges: [[Time.now]], destination_type: 'announcements'}) # HolidaysCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_holiday(holidays_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->create_holiday: #{e}"
end
```

#### Using the create_holiday_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHoliday200Response>, Integer, Hash)> create_holiday_with_http_info(holidays_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_holiday_with_http_info(holidays_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHoliday200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->create_holiday_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holidays_create_or_patch** | [**HolidaysCreateOrPatch**](HolidaysCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetHoliday200Response**](GetHoliday200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_holidays

> <FindHolidays200Response> find_holidays(opts)

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

api_instance = CircuitID::HolidaysApi.new
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
  result = api_instance.find_holidays(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->find_holidays: #{e}"
end
```

#### Using the find_holidays_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindHolidays200Response>, Integer, Hash)> find_holidays_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_holidays_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindHolidays200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->find_holidays_with_http_info: #{e}"
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

[**FindHolidays200Response**](FindHolidays200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_holiday

> <GetHoliday200Response> get_holiday(id)

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

api_instance = CircuitID::HolidaysApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_holiday(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->get_holiday: #{e}"
end
```

#### Using the get_holiday_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHoliday200Response>, Integer, Hash)> get_holiday_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_holiday_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHoliday200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->get_holiday_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetHoliday200Response**](GetHoliday200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_holiday

> <GetHoliday200Response> patch_holiday(id, holidays_create_or_patch)

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

api_instance = CircuitID::HolidaysApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
holidays_create_or_patch = CircuitID::HolidaysCreateOrPatch.new({name: 'name_example', object: 'object_example', object_ref: 'object_ref_example', date_time_ranges: [[Time.now]], destination_type: 'announcements'}) # HolidaysCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_holiday(id, holidays_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->patch_holiday: #{e}"
end
```

#### Using the patch_holiday_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHoliday200Response>, Integer, Hash)> patch_holiday_with_http_info(id, holidays_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_holiday_with_http_info(id, holidays_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHoliday200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->patch_holiday_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **holidays_create_or_patch** | [**HolidaysCreateOrPatch**](HolidaysCreateOrPatch.md) | The request data. |  |

### Return type

[**GetHoliday200Response**](GetHoliday200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_holiday

> <GetHoliday200Response> remove_holiday(id)

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

api_instance = CircuitID::HolidaysApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_holiday(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->remove_holiday: #{e}"
end
```

#### Using the remove_holiday_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHoliday200Response>, Integer, Hash)> remove_holiday_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_holiday_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHoliday200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling HolidaysApi->remove_holiday_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetHoliday200Response**](GetHoliday200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

