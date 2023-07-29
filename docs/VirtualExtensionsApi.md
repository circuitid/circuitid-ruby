# CircuitID::VirtualExtensionsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_virtual_extension**](VirtualExtensionsApi.md#create_virtual_extension) | **POST** /virtualextensions | Create a new object |
| [**find_virtual_extensions**](VirtualExtensionsApi.md#find_virtual_extensions) | **GET** /virtualextensions | Find multiple objects |
| [**get_virtual_extension**](VirtualExtensionsApi.md#get_virtual_extension) | **GET** /virtualextensions/{id} | Get object by id |
| [**patch_virtual_extension**](VirtualExtensionsApi.md#patch_virtual_extension) | **PATCH** /virtualextensions/{id} | Patch object&#39;s data |
| [**remove_virtual_extension**](VirtualExtensionsApi.md#remove_virtual_extension) | **DELETE** /virtualextensions/{id} | Delete object by id |


## create_virtual_extension

> <GetVirtualExtension200Response> create_virtual_extension(virtualextensions)

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

api_instance = CircuitID::VirtualExtensionsApi.new
virtualextensions = CircuitID::Virtualextensions.new({name: 'name_example', extension: 37}) # Virtualextensions | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_virtual_extension(virtualextensions)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->create_virtual_extension: #{e}"
end
```

#### Using the create_virtual_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVirtualExtension200Response>, Integer, Hash)> create_virtual_extension_with_http_info(virtualextensions)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_virtual_extension_with_http_info(virtualextensions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVirtualExtension200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->create_virtual_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtualextensions** | [**Virtualextensions**](Virtualextensions.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetVirtualExtension200Response**](GetVirtualExtension200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_virtual_extensions

> <FindVirtualExtensions200Response> find_virtual_extensions(opts)

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

api_instance = CircuitID::VirtualExtensionsApi.new
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
  result = api_instance.find_virtual_extensions(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->find_virtual_extensions: #{e}"
end
```

#### Using the find_virtual_extensions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindVirtualExtensions200Response>, Integer, Hash)> find_virtual_extensions_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_virtual_extensions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindVirtualExtensions200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->find_virtual_extensions_with_http_info: #{e}"
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

[**FindVirtualExtensions200Response**](FindVirtualExtensions200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_virtual_extension

> <GetVirtualExtension200Response> get_virtual_extension(id)

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

api_instance = CircuitID::VirtualExtensionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_virtual_extension(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->get_virtual_extension: #{e}"
end
```

#### Using the get_virtual_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVirtualExtension200Response>, Integer, Hash)> get_virtual_extension_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_virtual_extension_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVirtualExtension200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->get_virtual_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetVirtualExtension200Response**](GetVirtualExtension200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_virtual_extension

> <GetVirtualExtension200Response> patch_virtual_extension(id, virtualextensions)

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

api_instance = CircuitID::VirtualExtensionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
virtualextensions = CircuitID::Virtualextensions.new({name: 'name_example', extension: 37}) # Virtualextensions | The request data.

begin
  # Patch object's data
  result = api_instance.patch_virtual_extension(id, virtualextensions)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->patch_virtual_extension: #{e}"
end
```

#### Using the patch_virtual_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVirtualExtension200Response>, Integer, Hash)> patch_virtual_extension_with_http_info(id, virtualextensions)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_virtual_extension_with_http_info(id, virtualextensions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVirtualExtension200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->patch_virtual_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **virtualextensions** | [**Virtualextensions**](Virtualextensions.md) | The request data. |  |

### Return type

[**GetVirtualExtension200Response**](GetVirtualExtension200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_virtual_extension

> <GetVirtualExtension200Response> remove_virtual_extension(id)

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

api_instance = CircuitID::VirtualExtensionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_virtual_extension(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->remove_virtual_extension: #{e}"
end
```

#### Using the remove_virtual_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVirtualExtension200Response>, Integer, Hash)> remove_virtual_extension_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_virtual_extension_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVirtualExtension200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling VirtualExtensionsApi->remove_virtual_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetVirtualExtension200Response**](GetVirtualExtension200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

