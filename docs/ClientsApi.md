# CircuitID::ClientsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_client**](ClientsApi.md#create_client) | **POST** /clients | Create a new object |
| [**find_clients**](ClientsApi.md#find_clients) | **GET** /clients | Find multiple objects |
| [**get_client**](ClientsApi.md#get_client) | **GET** /clients/{id} | Get object by id |
| [**patch_client**](ClientsApi.md#patch_client) | **PATCH** /clients/{id} | Patch object&#39;s data |
| [**remove_client**](ClientsApi.md#remove_client) | **DELETE** /clients/{id} | Delete object by id |


## create_client

> <GetClient200Response> create_client(clients)

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

api_instance = CircuitID::ClientsApi.new
clients = CircuitID::Clients.new({name: 'name_example', user: 'user_example', mac: 'mac_example'}) # Clients | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_client(clients)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->create_client: #{e}"
end
```

#### Using the create_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClient200Response>, Integer, Hash)> create_client_with_http_info(clients)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_client_with_http_info(clients)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClient200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->create_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clients** | [**Clients**](Clients.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetClient200Response**](GetClient200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_clients

> <FindClients200Response> find_clients(opts)

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

api_instance = CircuitID::ClientsApi.new
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
  result = api_instance.find_clients(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->find_clients: #{e}"
end
```

#### Using the find_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindClients200Response>, Integer, Hash)> find_clients_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_clients_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindClients200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->find_clients_with_http_info: #{e}"
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

[**FindClients200Response**](FindClients200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client

> <GetClient200Response> get_client(id)

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

api_instance = CircuitID::ClientsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_client(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClient200Response>, Integer, Hash)> get_client_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_client_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClient200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetClient200Response**](GetClient200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_client

> <GetClient200Response> patch_client(id, clients)

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

api_instance = CircuitID::ClientsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
clients = CircuitID::Clients.new({name: 'name_example', user: 'user_example', mac: 'mac_example'}) # Clients | The request data.

begin
  # Patch object's data
  result = api_instance.patch_client(id, clients)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->patch_client: #{e}"
end
```

#### Using the patch_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClient200Response>, Integer, Hash)> patch_client_with_http_info(id, clients)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_client_with_http_info(id, clients)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClient200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->patch_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **clients** | [**Clients**](Clients.md) | The request data. |  |

### Return type

[**GetClient200Response**](GetClient200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_client

> <GetClient200Response> remove_client(id)

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

api_instance = CircuitID::ClientsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_client(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->remove_client: #{e}"
end
```

#### Using the remove_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClient200Response>, Integer, Hash)> remove_client_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_client_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClient200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ClientsApi->remove_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetClient200Response**](GetClient200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

