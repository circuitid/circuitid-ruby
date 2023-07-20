# CircuitID::GroupMembersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_member**](GroupMembersApi.md#create_group_member) | **POST** /groupmembers | Create a new object |
| [**find_group_members**](GroupMembersApi.md#find_group_members) | **GET** /groupmembers | Find multiple objects |
| [**get_group_member**](GroupMembersApi.md#get_group_member) | **GET** /groupmembers/{id} | Get object by id |
| [**patch_group_member**](GroupMembersApi.md#patch_group_member) | **PATCH** /groupmembers/{id} | Patch object&#39;s data |
| [**remove_group_member**](GroupMembersApi.md#remove_group_member) | **DELETE** /groupmembers/{id} | Delete object by id |


## create_group_member

> Object create_group_member(groupmembers)

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

api_instance = CircuitID::GroupMembersApi.new
groupmembers = CircuitID::Groupmembers.new({group: 3.56, object: 3.56, ref: users}) # Groupmembers | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_group_member(groupmembers)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->create_group_member: #{e}"
end
```

#### Using the create_group_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_group_member_with_http_info(groupmembers)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_group_member_with_http_info(groupmembers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->create_group_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groupmembers** | [**Groupmembers**](Groupmembers.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_group_members

> <FindGroupMembers200Response> find_group_members(opts)

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

api_instance = CircuitID::GroupMembersApi.new
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
  result = api_instance.find_group_members(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->find_group_members: #{e}"
end
```

#### Using the find_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindGroupMembers200Response>, Integer, Hash)> find_group_members_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_group_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindGroupMembers200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->find_group_members_with_http_info: #{e}"
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

[**FindGroupMembers200Response**](FindGroupMembers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_member

> Object get_group_member(id)

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

api_instance = CircuitID::GroupMembersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_group_member(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->get_group_member: #{e}"
end
```

#### Using the get_group_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_group_member_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_group_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->get_group_member_with_http_info: #{e}"
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


## patch_group_member

> Object patch_group_member(id, groupmembers)

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

api_instance = CircuitID::GroupMembersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
groupmembers = CircuitID::Groupmembers.new({group: 3.56, object: 3.56, ref: users}) # Groupmembers | The request data.

begin
  # Patch object's data
  result = api_instance.patch_group_member(id, groupmembers)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->patch_group_member: #{e}"
end
```

#### Using the patch_group_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_group_member_with_http_info(id, groupmembers)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_group_member_with_http_info(id, groupmembers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->patch_group_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **groupmembers** | [**Groupmembers**](Groupmembers.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_group_member

> Object remove_group_member(id)

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

api_instance = CircuitID::GroupMembersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_group_member(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->remove_group_member: #{e}"
end
```

#### Using the remove_group_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_group_member_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_group_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling GroupMembersApi->remove_group_member_with_http_info: #{e}"
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

