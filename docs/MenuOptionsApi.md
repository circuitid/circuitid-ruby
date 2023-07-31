# CircuitID::MenuOptionsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_menu_option**](MenuOptionsApi.md#create_menu_option) | **POST** /menuoptions | Create a new object |
| [**find_menu_options**](MenuOptionsApi.md#find_menu_options) | **GET** /menuoptions | Find multiple objects |
| [**get_menu_option**](MenuOptionsApi.md#get_menu_option) | **GET** /menuoptions/{id} | Get object by id |
| [**patch_menu_option**](MenuOptionsApi.md#patch_menu_option) | **PATCH** /menuoptions/{id} | Patch object&#39;s data |
| [**remove_menu_option**](MenuOptionsApi.md#remove_menu_option) | **DELETE** /menuoptions/{id} | Delete object by id |


## create_menu_option

> <GetMenuOption200Response> create_menu_option(menuoptions_create_or_patch)

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

api_instance = CircuitID::MenuOptionsApi.new
menuoptions_create_or_patch = CircuitID::MenuoptionsCreateOrPatch.new({name: 'name_example', digit: 37, menus: 3.56, destination_type: 'announcements'}) # MenuoptionsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_menu_option(menuoptions_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->create_menu_option: #{e}"
end
```

#### Using the create_menu_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenuOption200Response>, Integer, Hash)> create_menu_option_with_http_info(menuoptions_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_menu_option_with_http_info(menuoptions_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenuOption200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->create_menu_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **menuoptions_create_or_patch** | [**MenuoptionsCreateOrPatch**](MenuoptionsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetMenuOption200Response**](GetMenuOption200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_menu_options

> <FindMenuOptions200Response> find_menu_options(opts)

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

api_instance = CircuitID::MenuOptionsApi.new
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
  result = api_instance.find_menu_options(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->find_menu_options: #{e}"
end
```

#### Using the find_menu_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindMenuOptions200Response>, Integer, Hash)> find_menu_options_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_menu_options_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindMenuOptions200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->find_menu_options_with_http_info: #{e}"
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

[**FindMenuOptions200Response**](FindMenuOptions200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_menu_option

> <GetMenuOption200Response> get_menu_option(id)

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

api_instance = CircuitID::MenuOptionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_menu_option(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->get_menu_option: #{e}"
end
```

#### Using the get_menu_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenuOption200Response>, Integer, Hash)> get_menu_option_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_menu_option_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenuOption200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->get_menu_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMenuOption200Response**](GetMenuOption200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_menu_option

> <GetMenuOption200Response> patch_menu_option(id, menuoptions_create_or_patch)

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

api_instance = CircuitID::MenuOptionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
menuoptions_create_or_patch = CircuitID::MenuoptionsCreateOrPatch.new({name: 'name_example', digit: 37, menus: 3.56, destination_type: 'announcements'}) # MenuoptionsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_menu_option(id, menuoptions_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->patch_menu_option: #{e}"
end
```

#### Using the patch_menu_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenuOption200Response>, Integer, Hash)> patch_menu_option_with_http_info(id, menuoptions_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_menu_option_with_http_info(id, menuoptions_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenuOption200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->patch_menu_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **menuoptions_create_or_patch** | [**MenuoptionsCreateOrPatch**](MenuoptionsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetMenuOption200Response**](GetMenuOption200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_menu_option

> <GetMenuOption200Response> remove_menu_option(id)

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

api_instance = CircuitID::MenuOptionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_menu_option(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->remove_menu_option: #{e}"
end
```

#### Using the remove_menu_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMenuOption200Response>, Integer, Hash)> remove_menu_option_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_menu_option_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMenuOption200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MenuOptionsApi->remove_menu_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMenuOption200Response**](GetMenuOption200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

