# CircuitID::DirectoriesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_directorie**](DirectoriesApi.md#create_directorie) | **POST** /directories | Create a new object |
| [**find_directories**](DirectoriesApi.md#find_directories) | **GET** /directories | Find multiple objects |
| [**get_directorie**](DirectoriesApi.md#get_directorie) | **GET** /directories/{id} | Get object by id |
| [**patch_directorie**](DirectoriesApi.md#patch_directorie) | **PATCH** /directories/{id} | Patch object&#39;s data |
| [**remove_directorie**](DirectoriesApi.md#remove_directorie) | **DELETE** /directories/{id} | Delete object by id |


## create_directorie

> Object create_directorie(directories)

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
directories = CircuitID::Directories.new({name: 3.56, type: customers}) # Directories | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_directorie(directories)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->create_directorie: #{e}"
end
```

#### Using the create_directorie_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_directorie_with_http_info(directories)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_directorie_with_http_info(directories)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->create_directorie_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directories** | [**Directories**](Directories.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

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
  search: TODO, # Object | Filter results by the specified value.
  limit: TODO, # Object | $limit will return only the number of results you specify.
  skip: TODO, # Object | $skip will skip the specified number of results.
  sort: TODO, # Object | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
  select: TODO, # Object | $select allows to pick which fields to include in the result.
  _or: TODO, # Object | Find all records that match any of the given criteria.
  _and: TODO # Object | Find all records that match all of the given criteria.
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
| **search** | [**Object**](.md) | Filter results by the specified value. | [optional] |
| **limit** | [**Object**](.md) | $limit will return only the number of results you specify. | [optional] |
| **skip** | [**Object**](.md) | $skip will skip the specified number of results. | [optional] |
| **sort** | [**Object**](.md) | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending). | [optional] |
| **select** | [**Object**](.md) | $select allows to pick which fields to include in the result. | [optional] |
| **_or** | [**Object**](.md) | Find all records that match any of the given criteria. | [optional] |
| **_and** | [**Object**](.md) | Find all records that match all of the given criteria. | [optional] |

### Return type

[**FindDirectories200Response**](FindDirectories200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_directorie

> Object get_directorie(id)

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
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_directorie(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->get_directorie: #{e}"
end
```

#### Using the get_directorie_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_directorie_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_directorie_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->get_directorie_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_directorie

> Object patch_directorie(id, directories)

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
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
directories = CircuitID::Directories.new({name: 3.56, type: customers}) # Directories | The request data.

begin
  # Patch object's data
  result = api_instance.patch_directorie(id, directories)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->patch_directorie: #{e}"
end
```

#### Using the patch_directorie_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_directorie_with_http_info(id, directories)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_directorie_with_http_info(id, directories)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->patch_directorie_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **directories** | [**Directories**](Directories.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_directorie

> Object remove_directorie(id)

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
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_directorie(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->remove_directorie: #{e}"
end
```

#### Using the remove_directorie_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_directorie_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_directorie_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling DirectoriesApi->remove_directorie_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

