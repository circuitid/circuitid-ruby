# CircuitID::ConferenceRoomsApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_conference_room**](ConferenceRoomsApi.md#create_conference_room) | **POST** /conferencerooms | Create a new object |
| [**find_conference_rooms**](ConferenceRoomsApi.md#find_conference_rooms) | **GET** /conferencerooms | Find multiple objects |
| [**get_conference_room**](ConferenceRoomsApi.md#get_conference_room) | **GET** /conferencerooms/{id} | Get object by id |
| [**patch_conference_room**](ConferenceRoomsApi.md#patch_conference_room) | **PATCH** /conferencerooms/{id} | Patch object&#39;s data |
| [**remove_conference_room**](ConferenceRoomsApi.md#remove_conference_room) | **DELETE** /conferencerooms/{id} | Delete object by id |


## create_conference_room

> <GetConferenceRoom200Response> create_conference_room(conferencerooms_create_or_patch)

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

api_instance = CircuitID::ConferenceRoomsApi.new
conferencerooms_create_or_patch = CircuitID::ConferenceroomsCreateOrPatch.new({name: 'name_example'}) # ConferenceroomsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_conference_room(conferencerooms_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->create_conference_room: #{e}"
end
```

#### Using the create_conference_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConferenceRoom200Response>, Integer, Hash)> create_conference_room_with_http_info(conferencerooms_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_conference_room_with_http_info(conferencerooms_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConferenceRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->create_conference_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conferencerooms_create_or_patch** | [**ConferenceroomsCreateOrPatch**](ConferenceroomsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetConferenceRoom200Response**](GetConferenceRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_conference_rooms

> <FindConferenceRooms200Response> find_conference_rooms(opts)

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

api_instance = CircuitID::ConferenceRoomsApi.new
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
  result = api_instance.find_conference_rooms(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->find_conference_rooms: #{e}"
end
```

#### Using the find_conference_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindConferenceRooms200Response>, Integer, Hash)> find_conference_rooms_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_conference_rooms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindConferenceRooms200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->find_conference_rooms_with_http_info: #{e}"
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

[**FindConferenceRooms200Response**](FindConferenceRooms200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conference_room

> <GetConferenceRoom200Response> get_conference_room(id)

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

api_instance = CircuitID::ConferenceRoomsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_conference_room(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->get_conference_room: #{e}"
end
```

#### Using the get_conference_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConferenceRoom200Response>, Integer, Hash)> get_conference_room_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_conference_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConferenceRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->get_conference_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetConferenceRoom200Response**](GetConferenceRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_conference_room

> <GetConferenceRoom200Response> patch_conference_room(id, conferencerooms_create_or_patch)

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

api_instance = CircuitID::ConferenceRoomsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
conferencerooms_create_or_patch = CircuitID::ConferenceroomsCreateOrPatch.new({name: 'name_example'}) # ConferenceroomsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_conference_room(id, conferencerooms_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->patch_conference_room: #{e}"
end
```

#### Using the patch_conference_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConferenceRoom200Response>, Integer, Hash)> patch_conference_room_with_http_info(id, conferencerooms_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_conference_room_with_http_info(id, conferencerooms_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConferenceRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->patch_conference_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **conferencerooms_create_or_patch** | [**ConferenceroomsCreateOrPatch**](ConferenceroomsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetConferenceRoom200Response**](GetConferenceRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_conference_room

> <GetConferenceRoom200Response> remove_conference_room(id)

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

api_instance = CircuitID::ConferenceRoomsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_conference_room(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->remove_conference_room: #{e}"
end
```

#### Using the remove_conference_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConferenceRoom200Response>, Integer, Hash)> remove_conference_room_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_conference_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConferenceRoom200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ConferenceRoomsApi->remove_conference_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetConferenceRoom200Response**](GetConferenceRoom200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

