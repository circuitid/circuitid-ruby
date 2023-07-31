# CircuitID::NumbersApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_numbers**](NumbersApi.md#find_numbers) | **GET** /numbers | Find multiple objects |
| [**get_number**](NumbersApi.md#get_number) | **GET** /numbers/{id} | Get object by id |
| [**patch_number**](NumbersApi.md#patch_number) | **PATCH** /numbers/{id} | Patch object&#39;s data |


## find_numbers

> <FindNumbers200Response> find_numbers(opts)

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

api_instance = CircuitID::NumbersApi.new
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
  result = api_instance.find_numbers(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumbersApi->find_numbers: #{e}"
end
```

#### Using the find_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindNumbers200Response>, Integer, Hash)> find_numbers_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindNumbers200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumbersApi->find_numbers_with_http_info: #{e}"
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

[**FindNumbers200Response**](FindNumbers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_number

> <GetNumber200Response> get_number(id)

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

api_instance = CircuitID::NumbersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_number(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumbersApi->get_number: #{e}"
end
```

#### Using the get_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNumber200Response>, Integer, Hash)> get_number_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNumber200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumbersApi->get_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetNumber200Response**](GetNumber200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_number

> <GetNumber200Response> patch_number(id, numbers_create_or_patch)

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

api_instance = CircuitID::NumbersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
numbers_create_or_patch = CircuitID::NumbersCreateOrPatch.new({destination_type: 'announcements'}) # NumbersCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_number(id, numbers_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumbersApi->patch_number: #{e}"
end
```

#### Using the patch_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNumber200Response>, Integer, Hash)> patch_number_with_http_info(id, numbers_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_number_with_http_info(id, numbers_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNumber200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumbersApi->patch_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **numbers_create_or_patch** | [**NumbersCreateOrPatch**](NumbersCreateOrPatch.md) | The request data. |  |

### Return type

[**GetNumber200Response**](GetNumber200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

