# CircuitID::FirewallApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_firewall**](FirewallApi.md#create_firewall) | **POST** /firewall | Create a new object |
| [**find_firewall**](FirewallApi.md#find_firewall) | **GET** /firewall | Find multiple objects |
| [**get_firewall**](FirewallApi.md#get_firewall) | **GET** /firewall/{id} | Get object by id |
| [**patch_firewall**](FirewallApi.md#patch_firewall) | **PATCH** /firewall/{id} | Patch object&#39;s data |
| [**remove_firewall**](FirewallApi.md#remove_firewall) | **DELETE** /firewall/{id} | Delete object by id |


## create_firewall

> <GetFirewall200Response> create_firewall(firewall_create_or_patch)

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

api_instance = CircuitID::FirewallApi.new
firewall_create_or_patch = CircuitID::FirewallCreateOrPatch.new({name: 'name_example', type: 'allow', target: 'numbers', param: 'param_example'}) # FirewallCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_firewall(firewall_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->create_firewall: #{e}"
end
```

#### Using the create_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewall200Response>, Integer, Hash)> create_firewall_with_http_info(firewall_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_firewall_with_http_info(firewall_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewall200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->create_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_create_or_patch** | [**FirewallCreateOrPatch**](FirewallCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetFirewall200Response**](GetFirewall200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_firewall

> <FindFirewall200Response> find_firewall(opts)

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

api_instance = CircuitID::FirewallApi.new
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
  result = api_instance.find_firewall(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->find_firewall: #{e}"
end
```

#### Using the find_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindFirewall200Response>, Integer, Hash)> find_firewall_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_firewall_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindFirewall200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->find_firewall_with_http_info: #{e}"
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

[**FindFirewall200Response**](FindFirewall200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall

> <GetFirewall200Response> get_firewall(id)

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

api_instance = CircuitID::FirewallApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_firewall(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->get_firewall: #{e}"
end
```

#### Using the get_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewall200Response>, Integer, Hash)> get_firewall_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_firewall_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewall200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->get_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetFirewall200Response**](GetFirewall200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_firewall

> <GetFirewall200Response> patch_firewall(id, firewall_create_or_patch)

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

api_instance = CircuitID::FirewallApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
firewall_create_or_patch = CircuitID::FirewallCreateOrPatch.new({name: 'name_example', type: 'allow', target: 'numbers', param: 'param_example'}) # FirewallCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_firewall(id, firewall_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->patch_firewall: #{e}"
end
```

#### Using the patch_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewall200Response>, Integer, Hash)> patch_firewall_with_http_info(id, firewall_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_firewall_with_http_info(id, firewall_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewall200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->patch_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **firewall_create_or_patch** | [**FirewallCreateOrPatch**](FirewallCreateOrPatch.md) | The request data. |  |

### Return type

[**GetFirewall200Response**](GetFirewall200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_firewall

> <GetFirewall200Response> remove_firewall(id)

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

api_instance = CircuitID::FirewallApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_firewall(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->remove_firewall: #{e}"
end
```

#### Using the remove_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewall200Response>, Integer, Hash)> remove_firewall_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_firewall_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewall200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FirewallApi->remove_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetFirewall200Response**](GetFirewall200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

