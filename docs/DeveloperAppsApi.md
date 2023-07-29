# CircuitID::DeveloperAppsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_developer_app**](DeveloperAppsApi.md#create_developer_app) | **POST** /developerapps | Create a new object |
| [**find_developer_apps**](DeveloperAppsApi.md#find_developer_apps) | **GET** /developerapps | Find multiple objects |
| [**get_developer_app**](DeveloperAppsApi.md#get_developer_app) | **GET** /developerapps/{id} | Get object by id |
| [**patch_developer_app**](DeveloperAppsApi.md#patch_developer_app) | **PATCH** /developerapps/{id} | Patch object&#39;s data |
| [**remove_developer_app**](DeveloperAppsApi.md#remove_developer_app) | **DELETE** /developerapps/{id} | Delete object by id |


## create_developer_app

> <GetDeveloperApp200Response> create_developer_app(developerapps)

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

api_instance = CircuitID::DeveloperAppsApi.new
developerapps = CircuitID::Developerapps.new({name: 'name_example', type: 'events', visibility: 'private', integration_type: 'webhook', services: ['calendarevents'], user: 'user_example', status: 'active'}) # Developerapps | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_developer_app(developerapps)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app: #{e}"
end
```

#### Using the create_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperApp200Response>, Integer, Hash)> create_developer_app_with_http_info(developerapps)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_developer_app_with_http_info(developerapps)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperApp200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->create_developer_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developerapps** | [**Developerapps**](Developerapps.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetDeveloperApp200Response**](GetDeveloperApp200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_developer_apps

> <FindDeveloperApps200Response> find_developer_apps(opts)

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

api_instance = CircuitID::DeveloperAppsApi.new
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
  result = api_instance.find_developer_apps(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->find_developer_apps: #{e}"
end
```

#### Using the find_developer_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindDeveloperApps200Response>, Integer, Hash)> find_developer_apps_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_developer_apps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindDeveloperApps200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->find_developer_apps_with_http_info: #{e}"
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

[**FindDeveloperApps200Response**](FindDeveloperApps200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app

> <GetDeveloperApp200Response> get_developer_app(id)

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

api_instance = CircuitID::DeveloperAppsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_developer_app(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app: #{e}"
end
```

#### Using the get_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperApp200Response>, Integer, Hash)> get_developer_app_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_developer_app_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperApp200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->get_developer_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetDeveloperApp200Response**](GetDeveloperApp200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_developer_app

> <GetDeveloperApp200Response> patch_developer_app(id, developerapps)

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

api_instance = CircuitID::DeveloperAppsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
developerapps = CircuitID::Developerapps.new({name: 'name_example', type: 'events', visibility: 'private', integration_type: 'webhook', services: ['calendarevents'], user: 'user_example', status: 'active'}) # Developerapps | The request data.

begin
  # Patch object's data
  result = api_instance.patch_developer_app(id, developerapps)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->patch_developer_app: #{e}"
end
```

#### Using the patch_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperApp200Response>, Integer, Hash)> patch_developer_app_with_http_info(id, developerapps)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_developer_app_with_http_info(id, developerapps)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperApp200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->patch_developer_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **developerapps** | [**Developerapps**](Developerapps.md) | The request data. |  |

### Return type

[**GetDeveloperApp200Response**](GetDeveloperApp200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_developer_app

> <GetDeveloperApp200Response> remove_developer_app(id)

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

api_instance = CircuitID::DeveloperAppsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_developer_app(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->remove_developer_app: #{e}"
end
```

#### Using the remove_developer_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperApp200Response>, Integer, Hash)> remove_developer_app_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_developer_app_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperApp200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppsApi->remove_developer_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetDeveloperApp200Response**](GetDeveloperApp200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

