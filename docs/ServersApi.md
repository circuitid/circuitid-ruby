# CircuitIDAPIClient::ServersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_server**](ServersApi.md#create_server) | **POST** /servers | Create a new object |
| [**find_servers**](ServersApi.md#find_servers) | **GET** /servers | Find multiple objects |
| [**get_server**](ServersApi.md#get_server) | **GET** /servers/{id} | Get object by id |
| [**patch_server**](ServersApi.md#patch_server) | **PATCH** /servers/{id} | Patch object&#39;s data |
| [**remove_server**](ServersApi.md#remove_server) | **DELETE** /servers/{id} | Delete object by id |


## create_server

> Object create_server(servers)

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

api_instance = CircuitIDAPIClient::ServersApi.new
servers = CircuitIDAPIClient::Servers.new({name: 3.56, host: 3.56, port: 3.56, type: sip, domestic_outbound_call_limit: 3.56, domestic_inbound_call_limit: 3.56, international_outbound_call_limit: 3.56, toll_free_channel_limit: 3.56}) # Servers | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_server(servers)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->create_server: #{e}"
end
```

#### Using the create_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_server_with_http_info(servers)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_server_with_http_info(servers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->create_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | [**Servers**](Servers.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

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
require 'circuitid_ruby'
# setup authorization
CircuitIDAPIClient.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitIDAPIClient::ServersApi.new
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
  result = api_instance.find_servers(opts)
  p result
rescue CircuitIDAPIClient::ApiError => e
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
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->find_servers_with_http_info: #{e}"
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

[**FindServers200Response**](FindServers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_server

> Object get_server(id)

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

api_instance = CircuitIDAPIClient::ServersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_server(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->get_server: #{e}"
end
```

#### Using the get_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_server_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_server_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->get_server_with_http_info: #{e}"
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


## patch_server

> Object patch_server(id, servers)

Patch object's data

Make updates to specific fields within the record without replacing the entire dataset.

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

api_instance = CircuitIDAPIClient::ServersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
servers = CircuitIDAPIClient::Servers.new({name: 3.56, host: 3.56, port: 3.56, type: sip, domestic_outbound_call_limit: 3.56, domestic_inbound_call_limit: 3.56, international_outbound_call_limit: 3.56, toll_free_channel_limit: 3.56}) # Servers | The request data.

begin
  # Patch object's data
  result = api_instance.patch_server(id, servers)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->patch_server: #{e}"
end
```

#### Using the patch_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_server_with_http_info(id, servers)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_server_with_http_info(id, servers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->patch_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **servers** | [**Servers**](Servers.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_server

> Object remove_server(id)

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

api_instance = CircuitIDAPIClient::ServersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_server(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->remove_server: #{e}"
end
```

#### Using the remove_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_server_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_server_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ServersApi->remove_server_with_http_info: #{e}"
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

