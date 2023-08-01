# CircuitID::MessageBrandsApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_message_brand**](MessageBrandsApi.md#create_message_brand) | **POST** /messagebrands | Create a new object |
| [**find_message_brands**](MessageBrandsApi.md#find_message_brands) | **GET** /messagebrands | Find multiple objects |
| [**get_message_brand**](MessageBrandsApi.md#get_message_brand) | **GET** /messagebrands/{id} | Get object by id |


## create_message_brand

> <GetMessageBrand200Response> create_message_brand(messagebrands_create_or_patch)

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
messagebrands_create_or_patch = CircuitID::MessagebrandsCreateOrPatch.new({name: 'name_example', ein: 'ein_example', user: 'user_example', order: 'order_example'}) # MessagebrandsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_message_brand(messagebrands_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->create_message_brand: #{e}"
end
```

#### Using the create_message_brand_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessageBrand200Response>, Integer, Hash)> create_message_brand_with_http_info(messagebrands_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_message_brand_with_http_info(messagebrands_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageBrand200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->create_message_brand_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messagebrands_create_or_patch** | [**MessagebrandsCreateOrPatch**](MessagebrandsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetMessageBrand200Response**](GetMessageBrand200Response.md)

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
| **search** | **String** | Filter results by the specified value. | [optional] |
| **limit** | **Integer** | $limit will return only the number of results you specify. | [optional] |
| **skip** | **Integer** | $skip will skip the specified number of results. | [optional] |
| **sort** | [**Object**](.md) | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending). | [optional] |
| **select** | [**Array&lt;String&gt;**](String.md) | $select allows to pick which fields to include in the result. | [optional] |
| **_or** | [**Array&lt;Object&gt;**](Object.md) | Find all records that match any of the given criteria. | [optional] |
| **_and** | [**Array&lt;Object&gt;**](Object.md) | Find all records that match all of the given criteria. | [optional] |

### Return type

[**FindMessageBrands200Response**](FindMessageBrands200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message_brand

> <GetMessageBrand200Response> get_message_brand(id)

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
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

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

> <Array(<GetMessageBrand200Response>, Integer, Hash)> get_message_brand_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_message_brand_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageBrand200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageBrandsApi->get_message_brand_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMessageBrand200Response**](GetMessageBrand200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

