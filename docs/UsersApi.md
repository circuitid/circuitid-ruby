# CircuitIDAPIClient::UsersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersApi.md#create_user) | **POST** /users | Create a new object |
| [**find_users**](UsersApi.md#find_users) | **GET** /users | Find multiple objects |
| [**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get object by id |
| [**patch_user**](UsersApi.md#patch_user) | **PATCH** /users/{id} | Patch object&#39;s data |
| [**remove_user**](UsersApi.md#remove_user) | **DELETE** /users/{id} | Delete object by id |


## create_user

> Object create_user(users)

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

api_instance = CircuitIDAPIClient::UsersApi.new
users = CircuitIDAPIClient::Users.new({email: 3.56, password: 3.56, sip_password: 3.56, first: 3.56, last: 3.56, timezone: 3.56}) # Users | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_user(users)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_user_with_http_info(users)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_user_with_http_info(users)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Users**](Users.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_users

> <FindUsers200Response> find_users(opts)

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

api_instance = CircuitIDAPIClient::UsersApi.new
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
  result = api_instance.find_users(opts)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->find_users: #{e}"
end
```

#### Using the find_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindUsers200Response>, Integer, Hash)> find_users_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindUsers200Response>
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->find_users_with_http_info: #{e}"
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

[**FindUsers200Response**](FindUsers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> Object get_user(id)

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

api_instance = CircuitIDAPIClient::UsersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_user(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_user_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
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


## patch_user

> Object patch_user(id, users)

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

api_instance = CircuitIDAPIClient::UsersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
users = CircuitIDAPIClient::Users.new({email: 3.56, password: 3.56, sip_password: 3.56, first: 3.56, last: 3.56, timezone: 3.56}) # Users | The request data.

begin
  # Patch object's data
  result = api_instance.patch_user(id, users)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->patch_user: #{e}"
end
```

#### Using the patch_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_user_with_http_info(id, users)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_user_with_http_info(id, users)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->patch_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **users** | [**Users**](Users.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_user

> Object remove_user(id)

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

api_instance = CircuitIDAPIClient::UsersApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_user(id)
  p result
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->remove_user: #{e}"
end
```

#### Using the remove_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_user_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitIDAPIClient::ApiError => e
  puts "Error when calling UsersApi->remove_user_with_http_info: #{e}"
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

