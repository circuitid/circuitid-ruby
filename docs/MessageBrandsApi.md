# CircuitID::MessageBrandsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_message_brand**](MessageBrandsApi.md#create_message_brand) | **POST** /messagebrands | Create a new object |
| [**find_message_brands**](MessageBrandsApi.md#find_message_brands) | **GET** /messagebrands | Find multiple objects |
| [**get_message_brand**](MessageBrandsApi.md#get_message_brand) | **GET** /messagebrands/{id} | Get object by id |
| [**patch_message_brand**](MessageBrandsApi.md#patch_message_brand) | **PATCH** /messagebrands/{id} | Patch object&#39;s data |
| [**remove_message_brand**](MessageBrandsApi.md#remove_message_brand) | **DELETE** /messagebrands/{id} | Delete object by id |


## create_message_brand

> Object create_message_brand(messagebrands)

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

api_instance = CircuitID::MessageBrandsApi.new
messagebrands = CircuitID::Messagebrands.new({name: 3.56, ein: 3.56, user: 3.56, order: 3.56}) # Messagebrands | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_message_brand(messagebrands)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->create_message_brand: #{e}"
end
```

#### Using the create_message_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_message_brand_with_http_info(messagebrands)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_message_brand_with_http_info(messagebrands)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->create_message_brand_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messagebrands** | [**Messagebrands**](Messagebrands.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_message_brands

> <FindMessageBrands200Response> find_message_brands(opts)

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

api_instance = CircuitID::MessageBrandsApi.new
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
  result = api_instance.find_message_brands(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->find_message_brands: #{e}"
end
```

#### Using the find_message_brands_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindMessageBrands200Response>, Integer, Hash)> find_message_brands_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_message_brands_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindMessageBrands200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->find_message_brands_with_http_info: #{e}"
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

[**FindMessageBrands200Response**](FindMessageBrands200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message_brand

> Object get_message_brand(id)

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

api_instance = CircuitID::MessageBrandsApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_message_brand(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->get_message_brand: #{e}"
end
```

#### Using the get_message_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_message_brand_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_message_brand_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->get_message_brand_with_http_info: #{e}"
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


## patch_message_brand

> Object patch_message_brand(id, messagebrands)

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

api_instance = CircuitID::MessageBrandsApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
messagebrands = CircuitID::Messagebrands.new({name: 3.56, ein: 3.56, user: 3.56, order: 3.56}) # Messagebrands | The request data.

begin
  # Patch object's data
  result = api_instance.patch_message_brand(id, messagebrands)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->patch_message_brand: #{e}"
end
```

#### Using the patch_message_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_message_brand_with_http_info(id, messagebrands)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_message_brand_with_http_info(id, messagebrands)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->patch_message_brand_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **messagebrands** | [**Messagebrands**](Messagebrands.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_message_brand

> Object remove_message_brand(id)

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

api_instance = CircuitID::MessageBrandsApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_message_brand(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->remove_message_brand: #{e}"
end
```

#### Using the remove_message_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_message_brand_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_message_brand_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->remove_message_brand_with_http_info: #{e}"
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

