# CircuitIDAPIClient::FaxesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_faxe**](FaxesApi.md#create_faxe) | **POST** /faxes | Create a new object |
| [**find_faxes**](FaxesApi.md#find_faxes) | **GET** /faxes | Find multiple objects |
| [**get_faxe**](FaxesApi.md#get_faxe) | **GET** /faxes/{id} | Get object by id |
| [**remove_faxe**](FaxesApi.md#remove_faxe) | **DELETE** /faxes/{id} | Delete object by id |


## create_faxe

> Object create_faxe(faxes)

Create a new object

Add a new object to the system.

### Examples

```ruby
require 'time'
require 'circuitid_ruby'
# setup authorization
CircuitIDAPIClient.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitIDAPIClient::FaxesApi.new
faxes = CircuitIDAPIClient::Faxes.new({caller_id_number: 3.56, caller_destination: 3.56, status: failed, type: send, number: 3.56, fax_account: 3.56}) # Faxes | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_faxe(faxes)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->create_faxe: #{e}"
end
```

#### Using the create_faxe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_faxe_with_http_info(faxes)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_faxe_with_http_info(faxes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->create_faxe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faxes** | [**Faxes**](Faxes.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

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
require 'circuitid_ruby'
# setup authorization
CircuitIDAPIClient.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitIDAPIClient::FaxesApi.new
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
  result = api_instance.find_faxes(opts)
  p result
rescue CircuitIDAPIClient::ApiError => e
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
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->find_faxes_with_http_info: #{e}"
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

[**FindFaxes200Response**](FindFaxes200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_faxe

> Object get_faxe(id)

Get object by id

Get an object from the REST API Endpoint by its unique id.

### Examples

```ruby
require 'time'
require 'circuitid_ruby'
# setup authorization
CircuitIDAPIClient.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitIDAPIClient::FaxesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_faxe(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->get_faxe: #{e}"
end
```

#### Using the get_faxe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_faxe_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_faxe_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->get_faxe_with_http_info: #{e}"
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


## remove_faxe

> Object remove_faxe(id)

Delete object by id

Delete an object by id, removing it from the service.

### Examples

```ruby
require 'time'
require 'circuitid_ruby'
# setup authorization
CircuitIDAPIClient.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitIDAPIClient::FaxesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_faxe(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->remove_faxe: #{e}"
end
```

#### Using the remove_faxe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_faxe_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_faxe_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling FaxesApi->remove_faxe_with_http_info: #{e}"
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

