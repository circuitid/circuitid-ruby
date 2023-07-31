# CircuitID::UsersApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersApi.md#create_user) | **POST** /users | Create a new object |
| [**find_users**](UsersApi.md#find_users) | **GET** /users | Find multiple objects |
| [**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get object by id |
| [**patch_user**](UsersApi.md#patch_user) | **PATCH** /users/{id} | Patch object&#39;s data |
| [**remove_user**](UsersApi.md#remove_user) | **DELETE** /users/{id} | Delete object by id |


## create_user

> <GetUser200Response> create_user(users_create_or_patch)

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

api_instance = CircuitID::UsersApi.new
users_create_or_patch = CircuitID::UsersCreateOrPatch.new({email: 'email_example', password: 'password_example', first: 'first_example', last: 'last_example', timezone: 'Europe/Andorra'}) # UsersCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_user(users_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUser200Response>, Integer, Hash)> create_user_with_http_info(users_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_user_with_http_info(users_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUser200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users_create_or_patch** | [**UsersCreateOrPatch**](UsersCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetUser200Response**](GetUser200Response.md)

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
require 'circuitid-ruby'
# setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::UsersApi.new
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
  result = api_instance.find_users(opts)
  p result
rescue CircuitID::ApiError => e
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
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->find_users_with_http_info: #{e}"
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

[**FindUsers200Response**](FindUsers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <GetUser200Response> get_user(id)

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

api_instance = CircuitID::UsersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_user(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUser200Response>, Integer, Hash)> get_user_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUser200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetUser200Response**](GetUser200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_user

> <GetUser200Response> patch_user(id, users_create_or_patch)

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

api_instance = CircuitID::UsersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
users_create_or_patch = CircuitID::UsersCreateOrPatch.new({email: 'email_example', password: 'password_example', first: 'first_example', last: 'last_example', timezone: 'Europe/Andorra'}) # UsersCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_user(id, users_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->patch_user: #{e}"
end
```

#### Using the patch_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUser200Response>, Integer, Hash)> patch_user_with_http_info(id, users_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_user_with_http_info(id, users_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUser200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->patch_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **users_create_or_patch** | [**UsersCreateOrPatch**](UsersCreateOrPatch.md) | The request data. |  |

### Return type

[**GetUser200Response**](GetUser200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_user

> <GetUser200Response> remove_user(id)

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

api_instance = CircuitID::UsersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_user(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->remove_user: #{e}"
end
```

#### Using the remove_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUser200Response>, Integer, Hash)> remove_user_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUser200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UsersApi->remove_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetUser200Response**](GetUser200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

