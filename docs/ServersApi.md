# CircuitID::ServersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_server**](ServersApi.md#create_server) | **POST** /servers | Create a new object |
| [**find_servers**](ServersApi.md#find_servers) | **GET** /servers | Find multiple objects |
| [**get_server**](ServersApi.md#get_server) | **GET** /servers/{id} | Get object by id |
| [**patch_server**](ServersApi.md#patch_server) | **PATCH** /servers/{id} | Patch object&#39;s data |
| [**remove_server**](ServersApi.md#remove_server) | **DELETE** /servers/{id} | Delete object by id |


## create_server

> <GetServer200Response> create_server(servers_create_or_patch)

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

api_instance = CircuitID::ServersApi.new
servers_create_or_patch = CircuitID::ServersCreateOrPatch.new({name: 'name_example', host: 'host_example', port: 37, type: 'sip'}) # ServersCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_server(servers_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->create_server: #{e}"
end
```

#### Using the create_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServer200Response>, Integer, Hash)> create_server_with_http_info(servers_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_server_with_http_info(servers_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->create_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers_create_or_patch** | [**ServersCreateOrPatch**](ServersCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetServer200Response**](GetServer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_servers

> <FindServers200Response> find_servers(opts)

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

api_instance = CircuitID::ServersApi.new
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
  result = api_instance.find_servers(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->find_servers: #{e}"
end
```

#### Using the find_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindServers200Response>, Integer, Hash)> find_servers_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_servers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindServers200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->find_servers_with_http_info: #{e}"
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

[**FindServers200Response**](FindServers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_server

> <GetServer200Response> get_server(id)

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

api_instance = CircuitID::ServersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_server(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->get_server: #{e}"
end
```

#### Using the get_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServer200Response>, Integer, Hash)> get_server_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_server_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->get_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetServer200Response**](GetServer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_server

> <GetServer200Response> patch_server(id, servers_create_or_patch)

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

api_instance = CircuitID::ServersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
servers_create_or_patch = CircuitID::ServersCreateOrPatch.new({name: 'name_example', host: 'host_example', port: 37, type: 'sip'}) # ServersCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_server(id, servers_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->patch_server: #{e}"
end
```

#### Using the patch_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServer200Response>, Integer, Hash)> patch_server_with_http_info(id, servers_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_server_with_http_info(id, servers_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->patch_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **servers_create_or_patch** | [**ServersCreateOrPatch**](ServersCreateOrPatch.md) | The request data. |  |

### Return type

[**GetServer200Response**](GetServer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_server

> <GetServer200Response> remove_server(id)

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

api_instance = CircuitID::ServersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_server(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->remove_server: #{e}"
end
```

#### Using the remove_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServer200Response>, Integer, Hash)> remove_server_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_server_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ServersApi->remove_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetServer200Response**](GetServer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

