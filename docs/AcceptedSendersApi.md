# CircuitIDAPIClient::AcceptedSendersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_accepted_sender**](AcceptedSendersApi.md#create_accepted_sender) | **POST** /acceptedsenders | Create a new object |
| [**find_accepted_senders**](AcceptedSendersApi.md#find_accepted_senders) | **GET** /acceptedsenders | Find multiple objects |
| [**get_accepted_sender**](AcceptedSendersApi.md#get_accepted_sender) | **GET** /acceptedsenders/{id} | Get object by id |
| [**patch_accepted_sender**](AcceptedSendersApi.md#patch_accepted_sender) | **PATCH** /acceptedsenders/{id} | Patch object&#39;s data |
| [**remove_accepted_sender**](AcceptedSendersApi.md#remove_accepted_sender) | **DELETE** /acceptedsenders/{id} | Delete object by id |


## create_accepted_sender

> Object create_accepted_sender(acceptedsenders)

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

api_instance = CircuitIDAPIClient::AcceptedSendersApi.new
acceptedsenders = CircuitIDAPIClient::Acceptedsenders.new({object: 3.56, service: 3.56, service_ref: 3.56, ref: users}) # Acceptedsenders | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_accepted_sender(acceptedsenders)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->create_accepted_sender: #{e}"
end
```

#### Using the create_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_accepted_sender_with_http_info(acceptedsenders)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_accepted_sender_with_http_info(acceptedsenders)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->create_accepted_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acceptedsenders** | [**Acceptedsenders**](Acceptedsenders.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_accepted_senders

> <FindAcceptedSenders200Response> find_accepted_senders(opts)

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

api_instance = CircuitIDAPIClient::AcceptedSendersApi.new
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
  result = api_instance.find_accepted_senders(opts)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->find_accepted_senders: #{e}"
end
```

#### Using the find_accepted_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindAcceptedSenders200Response>, Integer, Hash)> find_accepted_senders_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_accepted_senders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindAcceptedSenders200Response>
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->find_accepted_senders_with_http_info: #{e}"
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

[**FindAcceptedSenders200Response**](FindAcceptedSenders200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accepted_sender

> Object get_accepted_sender(id)

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

api_instance = CircuitIDAPIClient::AcceptedSendersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_accepted_sender(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->get_accepted_sender: #{e}"
end
```

#### Using the get_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_accepted_sender_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_accepted_sender_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->get_accepted_sender_with_http_info: #{e}"
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


## patch_accepted_sender

> Object patch_accepted_sender(id, acceptedsenders)

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

api_instance = CircuitIDAPIClient::AcceptedSendersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
acceptedsenders = CircuitIDAPIClient::Acceptedsenders.new({object: 3.56, service: 3.56, service_ref: 3.56, ref: users}) # Acceptedsenders | The request data.

begin
  # Patch object's data
  result = api_instance.patch_accepted_sender(id, acceptedsenders)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->patch_accepted_sender: #{e}"
end
```

#### Using the patch_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_accepted_sender_with_http_info(id, acceptedsenders)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_accepted_sender_with_http_info(id, acceptedsenders)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->patch_accepted_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **acceptedsenders** | [**Acceptedsenders**](Acceptedsenders.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_accepted_sender

> Object remove_accepted_sender(id)

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

api_instance = CircuitIDAPIClient::AcceptedSendersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_accepted_sender(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->remove_accepted_sender: #{e}"
end
```

#### Using the remove_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_accepted_sender_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_accepted_sender_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling AcceptedSendersApi->remove_accepted_sender_with_http_info: #{e}"
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

