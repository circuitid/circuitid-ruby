# CircuitID::AnnouncementsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_announcement**](AnnouncementsApi.md#create_announcement) | **POST** /announcements | Create a new object |
| [**find_announcements**](AnnouncementsApi.md#find_announcements) | **GET** /announcements | Find multiple objects |
| [**get_announcement**](AnnouncementsApi.md#get_announcement) | **GET** /announcements/{id} | Get object by id |
| [**patch_announcement**](AnnouncementsApi.md#patch_announcement) | **PATCH** /announcements/{id} | Patch object&#39;s data |
| [**remove_announcement**](AnnouncementsApi.md#remove_announcement) | **DELETE** /announcements/{id} | Delete object by id |


## create_announcement

> <GetAnnouncement200Response> create_announcement(announcements_create_or_patch)

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

api_instance = CircuitID::AnnouncementsApi.new
announcements_create_or_patch = CircuitID::AnnouncementsCreateOrPatch.new({name: 'name_example', type: 'tts'}) # AnnouncementsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_announcement(announcements_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->create_announcement: #{e}"
end
```

#### Using the create_announcement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnnouncement200Response>, Integer, Hash)> create_announcement_with_http_info(announcements_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_announcement_with_http_info(announcements_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnnouncement200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->create_announcement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcements_create_or_patch** | [**AnnouncementsCreateOrPatch**](AnnouncementsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetAnnouncement200Response**](GetAnnouncement200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_announcements

> <FindAnnouncements200Response> find_announcements(opts)

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

api_instance = CircuitID::AnnouncementsApi.new
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
  result = api_instance.find_announcements(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->find_announcements: #{e}"
end
```

#### Using the find_announcements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindAnnouncements200Response>, Integer, Hash)> find_announcements_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_announcements_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindAnnouncements200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->find_announcements_with_http_info: #{e}"
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

[**FindAnnouncements200Response**](FindAnnouncements200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_announcement

> <GetAnnouncement200Response> get_announcement(id)

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

api_instance = CircuitID::AnnouncementsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_announcement(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->get_announcement: #{e}"
end
```

#### Using the get_announcement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnnouncement200Response>, Integer, Hash)> get_announcement_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_announcement_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnnouncement200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->get_announcement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetAnnouncement200Response**](GetAnnouncement200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_announcement

> <GetAnnouncement200Response> patch_announcement(id, announcements_create_or_patch)

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

api_instance = CircuitID::AnnouncementsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
announcements_create_or_patch = CircuitID::AnnouncementsCreateOrPatch.new({name: 'name_example', type: 'tts'}) # AnnouncementsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_announcement(id, announcements_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->patch_announcement: #{e}"
end
```

#### Using the patch_announcement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnnouncement200Response>, Integer, Hash)> patch_announcement_with_http_info(id, announcements_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_announcement_with_http_info(id, announcements_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnnouncement200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->patch_announcement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **announcements_create_or_patch** | [**AnnouncementsCreateOrPatch**](AnnouncementsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetAnnouncement200Response**](GetAnnouncement200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_announcement

> <GetAnnouncement200Response> remove_announcement(id)

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

api_instance = CircuitID::AnnouncementsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_announcement(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->remove_announcement: #{e}"
end
```

#### Using the remove_announcement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnnouncement200Response>, Integer, Hash)> remove_announcement_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_announcement_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnnouncement200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AnnouncementsApi->remove_announcement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetAnnouncement200Response**](GetAnnouncement200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

