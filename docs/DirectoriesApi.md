# CircuitID::DirectoriesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**createdirectory**](DirectoriesApi.md#createdirectory) | **POST** /directories | Create a new object |
| [**find_directories**](DirectoriesApi.md#find_directories) | **GET** /directories | Find multiple objects |
| [**getdirectory**](DirectoriesApi.md#getdirectory) | **GET** /directories/{id} | Get object by id |
| [**patchdirectory**](DirectoriesApi.md#patchdirectory) | **PATCH** /directories/{id} | Patch object&#39;s data |
| [**removedirectory**](DirectoriesApi.md#removedirectory) | **DELETE** /directories/{id} | Delete object by id |


## createdirectory

> <Getdirectory200Response> createdirectory(directories_create_or_patch)

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

api_instance = CircuitID::DirectoriesApi.new
directories_create_or_patch = CircuitID::DirectoriesCreateOrPatch.new({name: 'name_example', type: 'customers'}) # DirectoriesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.createdirectory(directories_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->createdirectory: #{e}"
end
```

#### Using the createdirectory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Getdirectory200Response>, Integer, Hash)> createdirectory_with_http_info(directories_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.createdirectory_with_http_info(directories_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Getdirectory200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->createdirectory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directories_create_or_patch** | [**DirectoriesCreateOrPatch**](DirectoriesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**Getdirectory200Response**](Getdirectory200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_directories

> <FindDirectories200Response> find_directories(opts)

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

api_instance = CircuitID::DirectoriesApi.new
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
  result = api_instance.find_directories(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->find_directories: #{e}"
end
```

#### Using the find_directories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindDirectories200Response>, Integer, Hash)> find_directories_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_directories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindDirectories200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->find_directories_with_http_info: #{e}"
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

[**FindDirectories200Response**](FindDirectories200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getdirectory

> <Getdirectory200Response> getdirectory(id)

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

api_instance = CircuitID::DirectoriesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.getdirectory(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->getdirectory: #{e}"
end
```

#### Using the getdirectory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Getdirectory200Response>, Integer, Hash)> getdirectory_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.getdirectory_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Getdirectory200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->getdirectory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**Getdirectory200Response**](Getdirectory200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patchdirectory

> <Getdirectory200Response> patchdirectory(id, directories_create_or_patch)

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

api_instance = CircuitID::DirectoriesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
directories_create_or_patch = CircuitID::DirectoriesCreateOrPatch.new({name: 'name_example', type: 'customers'}) # DirectoriesCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patchdirectory(id, directories_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->patchdirectory: #{e}"
end
```

#### Using the patchdirectory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Getdirectory200Response>, Integer, Hash)> patchdirectory_with_http_info(id, directories_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patchdirectory_with_http_info(id, directories_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Getdirectory200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->patchdirectory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **directories_create_or_patch** | [**DirectoriesCreateOrPatch**](DirectoriesCreateOrPatch.md) | The request data. |  |

### Return type

[**Getdirectory200Response**](Getdirectory200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## removedirectory

> <Getdirectory200Response> removedirectory(id)

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

api_instance = CircuitID::DirectoriesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.removedirectory(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->removedirectory: #{e}"
end
```

#### Using the removedirectory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Getdirectory200Response>, Integer, Hash)> removedirectory_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.removedirectory_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Getdirectory200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->removedirectory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**Getdirectory200Response**](Getdirectory200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

