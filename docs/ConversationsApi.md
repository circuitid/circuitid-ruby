# CircuitID::ConversationsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_conversation**](ConversationsApi.md#create_conversation) | **POST** /conversations | Create a new object |
| [**find_conversations**](ConversationsApi.md#find_conversations) | **GET** /conversations | Find multiple objects |
| [**get_conversation**](ConversationsApi.md#get_conversation) | **GET** /conversations/{id} | Get object by id |
| [**patch_conversation**](ConversationsApi.md#patch_conversation) | **PATCH** /conversations/{id} | Patch object&#39;s data |
| [**remove_conversation**](ConversationsApi.md#remove_conversation) | **DELETE** /conversations/{id} | Delete object by id |


## create_conversation

> <GetConversation200Response> create_conversation(conversations)

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

api_instance = CircuitID::ConversationsApi.new
conversations = CircuitID::Conversations.new({channel: 'email', ref: 'contacts', object: 'object_example', status: 'open'}) # Conversations | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_conversation(conversations)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->create_conversation: #{e}"
end
```

#### Using the create_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversation200Response>, Integer, Hash)> create_conversation_with_http_info(conversations)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_conversation_with_http_info(conversations)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversation200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->create_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | [**Conversations**](Conversations.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetConversation200Response**](GetConversation200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_conversations

> <FindConversations200Response> find_conversations(opts)

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

api_instance = CircuitID::ConversationsApi.new
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
  result = api_instance.find_conversations(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->find_conversations: #{e}"
end
```

#### Using the find_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindConversations200Response>, Integer, Hash)> find_conversations_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_conversations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindConversations200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->find_conversations_with_http_info: #{e}"
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

[**FindConversations200Response**](FindConversations200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversation

> <GetConversation200Response> get_conversation(id)

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

api_instance = CircuitID::ConversationsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_conversation(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->get_conversation: #{e}"
end
```

#### Using the get_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversation200Response>, Integer, Hash)> get_conversation_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_conversation_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversation200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->get_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetConversation200Response**](GetConversation200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_conversation

> <GetConversation200Response> patch_conversation(id, conversations)

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

api_instance = CircuitID::ConversationsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
conversations = CircuitID::Conversations.new({channel: 'email', ref: 'contacts', object: 'object_example', status: 'open'}) # Conversations | The request data.

begin
  # Patch object's data
  result = api_instance.patch_conversation(id, conversations)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->patch_conversation: #{e}"
end
```

#### Using the patch_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversation200Response>, Integer, Hash)> patch_conversation_with_http_info(id, conversations)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_conversation_with_http_info(id, conversations)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversation200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->patch_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **conversations** | [**Conversations**](Conversations.md) | The request data. |  |

### Return type

[**GetConversation200Response**](GetConversation200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_conversation

> <GetConversation200Response> remove_conversation(id)

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

api_instance = CircuitID::ConversationsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_conversation(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->remove_conversation: #{e}"
end
```

#### Using the remove_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversation200Response>, Integer, Hash)> remove_conversation_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_conversation_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversation200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConversationsApi->remove_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetConversation200Response**](GetConversation200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

