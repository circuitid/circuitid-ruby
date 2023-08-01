# CircuitID::DeveloperAppSubscriptionsApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_developer_app_subscription**](DeveloperAppSubscriptionsApi.md#create_developer_app_subscription) | **POST** /developerappsubscriptions | Create a new object |
| [**find_developer_app_subscriptions**](DeveloperAppSubscriptionsApi.md#find_developer_app_subscriptions) | **GET** /developerappsubscriptions | Find multiple objects |
| [**get_developer_app_subscription**](DeveloperAppSubscriptionsApi.md#get_developer_app_subscription) | **GET** /developerappsubscriptions/{id} | Get object by id |
| [**patch_developer_app_subscription**](DeveloperAppSubscriptionsApi.md#patch_developer_app_subscription) | **PATCH** /developerappsubscriptions/{id} | Patch object&#39;s data |
| [**remove_developer_app_subscription**](DeveloperAppSubscriptionsApi.md#remove_developer_app_subscription) | **DELETE** /developerappsubscriptions/{id} | Delete object by id |


## create_developer_app_subscription

> <GetDeveloperAppSubscription200Response> create_developer_app_subscription(developerappsubscriptions_create_or_patch)

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

api_instance = CircuitID::DeveloperAppSubscriptionsApi.new
developerappsubscriptions_create_or_patch = CircuitID::DeveloperappsubscriptionsCreateOrPatch.new({developer_app: 'developer_app_example', services: ['calendarevents']}) # DeveloperappsubscriptionsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_developer_app_subscription(developerappsubscriptions_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->create_developer_app_subscription: #{e}"
end
```

#### Using the create_developer_app_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppSubscription200Response>, Integer, Hash)> create_developer_app_subscription_with_http_info(developerappsubscriptions_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_developer_app_subscription_with_http_info(developerappsubscriptions_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppSubscription200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->create_developer_app_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developerappsubscriptions_create_or_patch** | [**DeveloperappsubscriptionsCreateOrPatch**](DeveloperappsubscriptionsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetDeveloperAppSubscription200Response**](GetDeveloperAppSubscription200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_developer_app_subscriptions

> <FindDeveloperAppSubscriptions200Response> find_developer_app_subscriptions(opts)

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

api_instance = CircuitID::DeveloperAppSubscriptionsApi.new
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
  result = api_instance.find_developer_app_subscriptions(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->find_developer_app_subscriptions: #{e}"
end
```

#### Using the find_developer_app_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindDeveloperAppSubscriptions200Response>, Integer, Hash)> find_developer_app_subscriptions_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_developer_app_subscriptions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindDeveloperAppSubscriptions200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->find_developer_app_subscriptions_with_http_info: #{e}"
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

[**FindDeveloperAppSubscriptions200Response**](FindDeveloperAppSubscriptions200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_developer_app_subscription

> <GetDeveloperAppSubscription200Response> get_developer_app_subscription(id)

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

api_instance = CircuitID::DeveloperAppSubscriptionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_developer_app_subscription(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->get_developer_app_subscription: #{e}"
end
```

#### Using the get_developer_app_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppSubscription200Response>, Integer, Hash)> get_developer_app_subscription_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_developer_app_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppSubscription200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->get_developer_app_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetDeveloperAppSubscription200Response**](GetDeveloperAppSubscription200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_developer_app_subscription

> <GetDeveloperAppSubscription200Response> patch_developer_app_subscription(id, developerappsubscriptions_create_or_patch)

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

api_instance = CircuitID::DeveloperAppSubscriptionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
developerappsubscriptions_create_or_patch = CircuitID::DeveloperappsubscriptionsCreateOrPatch.new({developer_app: 'developer_app_example', services: ['calendarevents']}) # DeveloperappsubscriptionsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_developer_app_subscription(id, developerappsubscriptions_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->patch_developer_app_subscription: #{e}"
end
```

#### Using the patch_developer_app_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppSubscription200Response>, Integer, Hash)> patch_developer_app_subscription_with_http_info(id, developerappsubscriptions_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_developer_app_subscription_with_http_info(id, developerappsubscriptions_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppSubscription200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->patch_developer_app_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **developerappsubscriptions_create_or_patch** | [**DeveloperappsubscriptionsCreateOrPatch**](DeveloperappsubscriptionsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetDeveloperAppSubscription200Response**](GetDeveloperAppSubscription200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_developer_app_subscription

> <GetDeveloperAppSubscription200Response> remove_developer_app_subscription(id)

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

api_instance = CircuitID::DeveloperAppSubscriptionsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_developer_app_subscription(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->remove_developer_app_subscription: #{e}"
end
```

#### Using the remove_developer_app_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeveloperAppSubscription200Response>, Integer, Hash)> remove_developer_app_subscription_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_developer_app_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeveloperAppSubscription200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DeveloperAppSubscriptionsApi->remove_developer_app_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetDeveloperAppSubscription200Response**](GetDeveloperAppSubscription200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

