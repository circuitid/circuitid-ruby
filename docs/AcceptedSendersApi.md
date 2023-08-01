# CircuitID::AcceptedSendersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_accepted_sender**](AcceptedSendersApi.md#create_accepted_sender) | **POST** /acceptedsenders | Create a new object |
| [**find_accepted_senders**](AcceptedSendersApi.md#find_accepted_senders) | **GET** /acceptedsenders | Find multiple objects |
| [**get_accepted_sender**](AcceptedSendersApi.md#get_accepted_sender) | **GET** /acceptedsenders/{id} | Get object by id |
| [**patch_accepted_sender**](AcceptedSendersApi.md#patch_accepted_sender) | **PATCH** /acceptedsenders/{id} | Patch object&#39;s data |
| [**remove_accepted_sender**](AcceptedSendersApi.md#remove_accepted_sender) | **DELETE** /acceptedsenders/{id} | Delete object by id |


## create_accepted_sender

> <GetAcceptedSender200Response> create_accepted_sender(acceptedsenders_create_or_patch)

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

api_instance = CircuitID::AcceptedSendersApi.new
acceptedsenders_create_or_patch = CircuitID::AcceptedsendersCreateOrPatch.new({object: 'object_example', service: 'service_example', service_ref: 'service_ref_example', ref: 'users'}) # AcceptedsendersCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_accepted_sender(acceptedsenders_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->create_accepted_sender: #{e}"
end
```

#### Using the create_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAcceptedSender200Response>, Integer, Hash)> create_accepted_sender_with_http_info(acceptedsenders_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_accepted_sender_with_http_info(acceptedsenders_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAcceptedSender200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->create_accepted_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acceptedsenders_create_or_patch** | [**AcceptedsendersCreateOrPatch**](AcceptedsendersCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetAcceptedSender200Response**](GetAcceptedSender200Response.md)

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
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::AcceptedSendersApi.new
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
  result = api_instance.find_accepted_senders(opts)
  p result
rescue CircuitID::ApiError => e
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
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->find_accepted_senders_with_http_info: #{e}"
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

[**FindAcceptedSenders200Response**](FindAcceptedSenders200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accepted_sender

> <GetAcceptedSender200Response> get_accepted_sender(id)

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

api_instance = CircuitID::AcceptedSendersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_accepted_sender(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->get_accepted_sender: #{e}"
end
```

#### Using the get_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAcceptedSender200Response>, Integer, Hash)> get_accepted_sender_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_accepted_sender_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAcceptedSender200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->get_accepted_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetAcceptedSender200Response**](GetAcceptedSender200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_accepted_sender

> <GetAcceptedSender200Response> patch_accepted_sender(id, acceptedsenders_create_or_patch)

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

api_instance = CircuitID::AcceptedSendersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
acceptedsenders_create_or_patch = CircuitID::AcceptedsendersCreateOrPatch.new({object: 'object_example', service: 'service_example', service_ref: 'service_ref_example', ref: 'users'}) # AcceptedsendersCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_accepted_sender(id, acceptedsenders_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->patch_accepted_sender: #{e}"
end
```

#### Using the patch_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAcceptedSender200Response>, Integer, Hash)> patch_accepted_sender_with_http_info(id, acceptedsenders_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_accepted_sender_with_http_info(id, acceptedsenders_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAcceptedSender200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->patch_accepted_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **acceptedsenders_create_or_patch** | [**AcceptedsendersCreateOrPatch**](AcceptedsendersCreateOrPatch.md) | The request data. |  |

### Return type

[**GetAcceptedSender200Response**](GetAcceptedSender200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_accepted_sender

> <GetAcceptedSender200Response> remove_accepted_sender(id)

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

api_instance = CircuitID::AcceptedSendersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_accepted_sender(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->remove_accepted_sender: #{e}"
end
```

#### Using the remove_accepted_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAcceptedSender200Response>, Integer, Hash)> remove_accepted_sender_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_accepted_sender_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAcceptedSender200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AcceptedSendersApi->remove_accepted_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetAcceptedSender200Response**](GetAcceptedSender200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

