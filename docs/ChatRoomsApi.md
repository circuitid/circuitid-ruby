# CircuitID::ChatRoomsApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_chat_room**](ChatRoomsApi.md#create_chat_room) | **POST** /chatrooms | Create a new object |
| [**find_chat_rooms**](ChatRoomsApi.md#find_chat_rooms) | **GET** /chatrooms | Find multiple objects |
| [**get_chat_room**](ChatRoomsApi.md#get_chat_room) | **GET** /chatrooms/{id} | Get object by id |
| [**patch_chat_room**](ChatRoomsApi.md#patch_chat_room) | **PATCH** /chatrooms/{id} | Patch object&#39;s data |
| [**remove_chat_room**](ChatRoomsApi.md#remove_chat_room) | **DELETE** /chatrooms/{id} | Delete object by id |


## create_chat_room

> <GetChatRoom200Response> create_chat_room(chatrooms_create_or_patch)

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

api_instance = CircuitID::ChatRoomsApi.new
chatrooms_create_or_patch = CircuitID::ChatroomsCreateOrPatch.new # ChatroomsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_chat_room(chatrooms_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->create_chat_room: #{e}"
end
```

#### Using the create_chat_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChatRoom200Response>, Integer, Hash)> create_chat_room_with_http_info(chatrooms_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_chat_room_with_http_info(chatrooms_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChatRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->create_chat_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chatrooms_create_or_patch** | [**ChatroomsCreateOrPatch**](ChatroomsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetChatRoom200Response**](GetChatRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_chat_rooms

> <FindChatRooms200Response> find_chat_rooms(opts)

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

api_instance = CircuitID::ChatRoomsApi.new
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
  result = api_instance.find_chat_rooms(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->find_chat_rooms: #{e}"
end
```

#### Using the find_chat_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindChatRooms200Response>, Integer, Hash)> find_chat_rooms_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_chat_rooms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindChatRooms200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->find_chat_rooms_with_http_info: #{e}"
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

[**FindChatRooms200Response**](FindChatRooms200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chat_room

> <GetChatRoom200Response> get_chat_room(id)

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

api_instance = CircuitID::ChatRoomsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_chat_room(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->get_chat_room: #{e}"
end
```

#### Using the get_chat_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChatRoom200Response>, Integer, Hash)> get_chat_room_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_chat_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChatRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->get_chat_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetChatRoom200Response**](GetChatRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_chat_room

> <GetChatRoom200Response> patch_chat_room(id, chatrooms_create_or_patch)

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

api_instance = CircuitID::ChatRoomsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
chatrooms_create_or_patch = CircuitID::ChatroomsCreateOrPatch.new # ChatroomsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_chat_room(id, chatrooms_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->patch_chat_room: #{e}"
end
```

#### Using the patch_chat_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChatRoom200Response>, Integer, Hash)> patch_chat_room_with_http_info(id, chatrooms_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_chat_room_with_http_info(id, chatrooms_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChatRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->patch_chat_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **chatrooms_create_or_patch** | [**ChatroomsCreateOrPatch**](ChatroomsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetChatRoom200Response**](GetChatRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_chat_room

> <GetChatRoom200Response> remove_chat_room(id)

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

api_instance = CircuitID::ChatRoomsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_chat_room(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->remove_chat_room: #{e}"
end
```

#### Using the remove_chat_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChatRoom200Response>, Integer, Hash)> remove_chat_room_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_chat_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChatRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ChatRoomsApi->remove_chat_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetChatRoom200Response**](GetChatRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

