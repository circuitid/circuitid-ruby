# CircuitID::UserTokensApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_token**](UserTokensApi.md#create_user_token) | **POST** /usertokens | Create a new object |
| [**find_user_tokens**](UserTokensApi.md#find_user_tokens) | **GET** /usertokens | Find multiple objects |
| [**get_user_token**](UserTokensApi.md#get_user_token) | **GET** /usertokens/{id} | Get object by id |
| [**patch_user_token**](UserTokensApi.md#patch_user_token) | **PATCH** /usertokens/{id} | Patch object&#39;s data |
| [**remove_user_token**](UserTokensApi.md#remove_user_token) | **DELETE** /usertokens/{id} | Delete object by id |


## create_user_token

> <GetUserToken200Response> create_user_token(usertokens)

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

api_instance = CircuitID::UserTokensApi.new
usertokens = CircuitID::Usertokens.new({name: 'name_example', user: 'user_example', token: 'token_example', expires_in_years: 37}) # Usertokens | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_user_token(usertokens)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->create_user_token: #{e}"
end
```

#### Using the create_user_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserToken200Response>, Integer, Hash)> create_user_token_with_http_info(usertokens)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_user_token_with_http_info(usertokens)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserToken200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->create_user_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usertokens** | [**Usertokens**](Usertokens.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetUserToken200Response**](GetUserToken200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_user_tokens

> <FindUserTokens200Response> find_user_tokens(opts)

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

api_instance = CircuitID::UserTokensApi.new
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
  result = api_instance.find_user_tokens(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->find_user_tokens: #{e}"
end
```

#### Using the find_user_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindUserTokens200Response>, Integer, Hash)> find_user_tokens_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_user_tokens_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindUserTokens200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->find_user_tokens_with_http_info: #{e}"
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

[**FindUserTokens200Response**](FindUserTokens200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_token

> <GetUserToken200Response> get_user_token(id)

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

api_instance = CircuitID::UserTokensApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_user_token(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->get_user_token: #{e}"
end
```

#### Using the get_user_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserToken200Response>, Integer, Hash)> get_user_token_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_user_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserToken200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->get_user_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetUserToken200Response**](GetUserToken200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_user_token

> <GetUserToken200Response> patch_user_token(id, usertokens)

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

api_instance = CircuitID::UserTokensApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
usertokens = CircuitID::Usertokens.new({name: 'name_example', user: 'user_example', token: 'token_example', expires_in_years: 37}) # Usertokens | The request data.

begin
  # Patch object's data
  result = api_instance.patch_user_token(id, usertokens)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->patch_user_token: #{e}"
end
```

#### Using the patch_user_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserToken200Response>, Integer, Hash)> patch_user_token_with_http_info(id, usertokens)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_user_token_with_http_info(id, usertokens)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserToken200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->patch_user_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **usertokens** | [**Usertokens**](Usertokens.md) | The request data. |  |

### Return type

[**GetUserToken200Response**](GetUserToken200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_user_token

> <GetUserToken200Response> remove_user_token(id)

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

api_instance = CircuitID::UserTokensApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_user_token(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->remove_user_token: #{e}"
end
```

#### Using the remove_user_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserToken200Response>, Integer, Hash)> remove_user_token_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_user_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserToken200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling UserTokensApi->remove_user_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetUserToken200Response**](GetUserToken200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

