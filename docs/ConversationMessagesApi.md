# CircuitIDAPIClient::ConversationMessagesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_conversation_message**](ConversationMessagesApi.md#create_conversation_message) | **POST** /conversationmessages | Create a new object |
| [**find_conversation_messages**](ConversationMessagesApi.md#find_conversation_messages) | **GET** /conversationmessages | Find multiple objects |
| [**get_conversation_message**](ConversationMessagesApi.md#get_conversation_message) | **GET** /conversationmessages/{id} | Get object by id |
| [**patch_conversation_message**](ConversationMessagesApi.md#patch_conversation_message) | **PATCH** /conversationmessages/{id} | Patch object&#39;s data |
| [**remove_conversation_message**](ConversationMessagesApi.md#remove_conversation_message) | **DELETE** /conversationmessages/{id} | Delete object by id |


## create_conversation_message

> Object create_conversation_message(conversationmessages)

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

api_instance = CircuitIDAPIClient::ConversationMessagesApi.new
conversationmessages = CircuitIDAPIClient::Conversationmessages.new({from: 3.56, from_number: 3.56, to: 3.56, direction: inbound}) # Conversationmessages | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_conversation_message(conversationmessages)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->create_conversation_message: #{e}"
end
```

#### Using the create_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_conversation_message_with_http_info(conversationmessages)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_conversation_message_with_http_info(conversationmessages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->create_conversation_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversationmessages** | [**Conversationmessages**](Conversationmessages.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_conversation_messages

> <FindConversationMessages200Response> find_conversation_messages(opts)

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

api_instance = CircuitIDAPIClient::ConversationMessagesApi.new
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
  result = api_instance.find_conversation_messages(opts)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->find_conversation_messages: #{e}"
end
```

#### Using the find_conversation_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindConversationMessages200Response>, Integer, Hash)> find_conversation_messages_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_conversation_messages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindConversationMessages200Response>
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->find_conversation_messages_with_http_info: #{e}"
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

[**FindConversationMessages200Response**](FindConversationMessages200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversation_message

> Object get_conversation_message(id)

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

api_instance = CircuitIDAPIClient::ConversationMessagesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_conversation_message(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->get_conversation_message: #{e}"
end
```

#### Using the get_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_conversation_message_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_conversation_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->get_conversation_message_with_http_info: #{e}"
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


## patch_conversation_message

> Object patch_conversation_message(id, conversationmessages)

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

api_instance = CircuitIDAPIClient::ConversationMessagesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
conversationmessages = CircuitIDAPIClient::Conversationmessages.new({from: 3.56, from_number: 3.56, to: 3.56, direction: inbound}) # Conversationmessages | The request data.

begin
  # Patch object's data
  result = api_instance.patch_conversation_message(id, conversationmessages)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->patch_conversation_message: #{e}"
end
```

#### Using the patch_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_conversation_message_with_http_info(id, conversationmessages)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_conversation_message_with_http_info(id, conversationmessages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->patch_conversation_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **conversationmessages** | [**Conversationmessages**](Conversationmessages.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_conversation_message

> Object remove_conversation_message(id)

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

api_instance = CircuitIDAPIClient::ConversationMessagesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_conversation_message(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->remove_conversation_message: #{e}"
end
```

#### Using the remove_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_conversation_message_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_conversation_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling ConversationMessagesApi->remove_conversation_message_with_http_info: #{e}"
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

