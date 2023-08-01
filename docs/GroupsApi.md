# CircuitID::GroupsApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group**](GroupsApi.md#create_group) | **POST** /groups | Create a new object |
| [**find_groups**](GroupsApi.md#find_groups) | **GET** /groups | Find multiple objects |
| [**get_group**](GroupsApi.md#get_group) | **GET** /groups/{id} | Get object by id |
| [**patch_group**](GroupsApi.md#patch_group) | **PATCH** /groups/{id} | Patch object&#39;s data |
| [**remove_group**](GroupsApi.md#remove_group) | **DELETE** /groups/{id} | Delete object by id |


## create_group

> <GetGroup200Response> create_group(groups_create_or_patch)

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

api_instance = CircuitID::GroupsApi.new
groups_create_or_patch = CircuitID::GroupsCreateOrPatch.new({name: 'name_example'}) # GroupsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_group(groups_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGroup200Response>, Integer, Hash)> create_group_with_http_info(groups_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_group_with_http_info(groups_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGroup200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups_create_or_patch** | [**GroupsCreateOrPatch**](GroupsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetGroup200Response**](GetGroup200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_groups

> <FindGroups200Response> find_groups(opts)

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

api_instance = CircuitID::GroupsApi.new
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
  result = api_instance.find_groups(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->find_groups: #{e}"
end
```

#### Using the find_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindGroups200Response>, Integer, Hash)> find_groups_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindGroups200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->find_groups_with_http_info: #{e}"
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

[**FindGroups200Response**](FindGroups200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> <GetGroup200Response> get_group(id)

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

api_instance = CircuitID::GroupsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_group(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->get_group: #{e}"
end
```

#### Using the get_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGroup200Response>, Integer, Hash)> get_group_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGroup200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->get_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetGroup200Response**](GetGroup200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_group

> <GetGroup200Response> patch_group(id, groups_create_or_patch)

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

api_instance = CircuitID::GroupsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
groups_create_or_patch = CircuitID::GroupsCreateOrPatch.new({name: 'name_example'}) # GroupsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_group(id, groups_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->patch_group: #{e}"
end
```

#### Using the patch_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGroup200Response>, Integer, Hash)> patch_group_with_http_info(id, groups_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_group_with_http_info(id, groups_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGroup200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->patch_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **groups_create_or_patch** | [**GroupsCreateOrPatch**](GroupsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetGroup200Response**](GetGroup200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_group

> <GetGroup200Response> remove_group(id)

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

api_instance = CircuitID::GroupsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_group(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->remove_group: #{e}"
end
```

#### Using the remove_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGroup200Response>, Integer, Hash)> remove_group_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGroup200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling GroupsApi->remove_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetGroup200Response**](GetGroup200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

