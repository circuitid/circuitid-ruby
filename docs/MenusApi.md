# CircuitID::MenusApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_menu**](MenusApi.md#create_menu) | **POST** /menus | Create a new object |
| [**find_menus**](MenusApi.md#find_menus) | **GET** /menus | Find multiple objects |
| [**get_menu**](MenusApi.md#get_menu) | **GET** /menus/{id} | Get object by id |
| [**patch_menu**](MenusApi.md#patch_menu) | **PATCH** /menus/{id} | Patch object&#39;s data |
| [**remove_menu**](MenusApi.md#remove_menu) | **DELETE** /menus/{id} | Delete object by id |


## create_menu

> <GetMenu200Response> create_menu(menus_create_or_patch)

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

api_instance = CircuitID::MenusApi.new
menus_create_or_patch = CircuitID::MenusCreateOrPatch.new({name: 'name_example', max_extension_length: 37, greeting_type: 'tts'}) # MenusCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_menu(menus_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->create_menu: #{e}"
end
```

#### Using the create_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenu200Response>, Integer, Hash)> create_menu_with_http_info(menus_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_menu_with_http_info(menus_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenu200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->create_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **menus_create_or_patch** | [**MenusCreateOrPatch**](MenusCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetMenu200Response**](GetMenu200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_menus

> <FindMenus200Response> find_menus(opts)

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

api_instance = CircuitID::MenusApi.new
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
  result = api_instance.find_menus(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->find_menus: #{e}"
end
```

#### Using the find_menus_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindMenus200Response>, Integer, Hash)> find_menus_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_menus_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindMenus200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->find_menus_with_http_info: #{e}"
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

[**FindMenus200Response**](FindMenus200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_menu

> <GetMenu200Response> get_menu(id)

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

api_instance = CircuitID::MenusApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_menu(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->get_menu: #{e}"
end
```

#### Using the get_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenu200Response>, Integer, Hash)> get_menu_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_menu_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenu200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->get_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMenu200Response**](GetMenu200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_menu

> <GetMenu200Response> patch_menu(id, menus_create_or_patch)

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

api_instance = CircuitID::MenusApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
menus_create_or_patch = CircuitID::MenusCreateOrPatch.new({name: 'name_example', max_extension_length: 37, greeting_type: 'tts'}) # MenusCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_menu(id, menus_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->patch_menu: #{e}"
end
```

#### Using the patch_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenu200Response>, Integer, Hash)> patch_menu_with_http_info(id, menus_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_menu_with_http_info(id, menus_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenu200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->patch_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **menus_create_or_patch** | [**MenusCreateOrPatch**](MenusCreateOrPatch.md) | The request data. |  |

### Return type

[**GetMenu200Response**](GetMenu200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_menu

> <GetMenu200Response> remove_menu(id)

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

api_instance = CircuitID::MenusApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_menu(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->remove_menu: #{e}"
end
```

#### Using the remove_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenu200Response>, Integer, Hash)> remove_menu_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_menu_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenu200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenusApi->remove_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMenu200Response**](GetMenu200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

