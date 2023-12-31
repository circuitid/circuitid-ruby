# CircuitID::FaxesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fax**](FaxesApi.md#create_fax) | **POST** /faxes | Create a new object |
| [**find_faxes**](FaxesApi.md#find_faxes) | **GET** /faxes | Find multiple objects |
| [**get_fax**](FaxesApi.md#get_fax) | **GET** /faxes/{id} | Get object by id |
| [**remove_fax**](FaxesApi.md#remove_fax) | **DELETE** /faxes/{id} | Delete object by id |


## create_fax

> <GetFax200Response> create_fax(faxes_create_or_patch)

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

api_instance = CircuitID::FaxesApi.new
faxes_create_or_patch = CircuitID::FaxesCreateOrPatch.new({caller_destinations: ['caller_destinations_example'], number: 'number_example', fax_account: 'fax_account_example'}) # FaxesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_fax(faxes_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->create_fax: #{e}"
end
```

#### Using the create_fax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFax200Response>, Integer, Hash)> create_fax_with_http_info(faxes_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_fax_with_http_info(faxes_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFax200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->create_fax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faxes_create_or_patch** | [**FaxesCreateOrPatch**](FaxesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetFax200Response**](GetFax200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_faxes

> <FindFaxes200Response> find_faxes(opts)

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

api_instance = CircuitID::FaxesApi.new
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
  result = api_instance.find_faxes(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->find_faxes: #{e}"
end
```

#### Using the find_faxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindFaxes200Response>, Integer, Hash)> find_faxes_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_faxes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindFaxes200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->find_faxes_with_http_info: #{e}"
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

[**FindFaxes200Response**](FindFaxes200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fax

> <GetFax200Response> get_fax(id)

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

api_instance = CircuitID::FaxesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_fax(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->get_fax: #{e}"
end
```

#### Using the get_fax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFax200Response>, Integer, Hash)> get_fax_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_fax_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFax200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->get_fax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetFax200Response**](GetFax200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_fax

> <GetFax200Response> remove_fax(id)

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

api_instance = CircuitID::FaxesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_fax(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->remove_fax: #{e}"
end
```

#### Using the remove_fax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFax200Response>, Integer, Hash)> remove_fax_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_fax_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFax200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FaxesApi->remove_fax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetFax200Response**](GetFax200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

