# CircuitID::PhoneOutboundRulesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_phone_outbound_rule**](PhoneOutboundRulesApi.md#create_phone_outbound_rule) | **POST** /phoneoutboundrules | Create a new object |
| [**find_phone_outbound_rules**](PhoneOutboundRulesApi.md#find_phone_outbound_rules) | **GET** /phoneoutboundrules | Find multiple objects |
| [**get_phone_outbound_rule**](PhoneOutboundRulesApi.md#get_phone_outbound_rule) | **GET** /phoneoutboundrules/{id} | Get object by id |
| [**patch_phone_outbound_rule**](PhoneOutboundRulesApi.md#patch_phone_outbound_rule) | **PATCH** /phoneoutboundrules/{id} | Patch object&#39;s data |
| [**remove_phone_outbound_rule**](PhoneOutboundRulesApi.md#remove_phone_outbound_rule) | **DELETE** /phoneoutboundrules/{id} | Delete object by id |


## create_phone_outbound_rule

> <GetPhoneOutboundRule200Response> create_phone_outbound_rule(phoneoutboundrules_create_or_patch)

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

api_instance = CircuitID::PhoneOutboundRulesApi.new
phoneoutboundrules_create_or_patch = CircuitID::PhoneoutboundrulesCreateOrPatch.new({name: 'name_example'}) # PhoneoutboundrulesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_phone_outbound_rule(phoneoutboundrules_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->create_phone_outbound_rule: #{e}"
end
```

#### Using the create_phone_outbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneOutboundRule200Response>, Integer, Hash)> create_phone_outbound_rule_with_http_info(phoneoutboundrules_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_phone_outbound_rule_with_http_info(phoneoutboundrules_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneOutboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->create_phone_outbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phoneoutboundrules_create_or_patch** | [**PhoneoutboundrulesCreateOrPatch**](PhoneoutboundrulesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetPhoneOutboundRule200Response**](GetPhoneOutboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_phone_outbound_rules

> <FindPhoneOutboundRules200Response> find_phone_outbound_rules(opts)

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

api_instance = CircuitID::PhoneOutboundRulesApi.new
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
  result = api_instance.find_phone_outbound_rules(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->find_phone_outbound_rules: #{e}"
end
```

#### Using the find_phone_outbound_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindPhoneOutboundRules200Response>, Integer, Hash)> find_phone_outbound_rules_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_phone_outbound_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindPhoneOutboundRules200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->find_phone_outbound_rules_with_http_info: #{e}"
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

[**FindPhoneOutboundRules200Response**](FindPhoneOutboundRules200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_outbound_rule

> <GetPhoneOutboundRule200Response> get_phone_outbound_rule(id)

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

api_instance = CircuitID::PhoneOutboundRulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_phone_outbound_rule(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->get_phone_outbound_rule: #{e}"
end
```

#### Using the get_phone_outbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneOutboundRule200Response>, Integer, Hash)> get_phone_outbound_rule_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_phone_outbound_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneOutboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->get_phone_outbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetPhoneOutboundRule200Response**](GetPhoneOutboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_phone_outbound_rule

> <GetPhoneOutboundRule200Response> patch_phone_outbound_rule(id, phoneoutboundrules_create_or_patch)

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

api_instance = CircuitID::PhoneOutboundRulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
phoneoutboundrules_create_or_patch = CircuitID::PhoneoutboundrulesCreateOrPatch.new({name: 'name_example'}) # PhoneoutboundrulesCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_phone_outbound_rule(id, phoneoutboundrules_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->patch_phone_outbound_rule: #{e}"
end
```

#### Using the patch_phone_outbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneOutboundRule200Response>, Integer, Hash)> patch_phone_outbound_rule_with_http_info(id, phoneoutboundrules_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_phone_outbound_rule_with_http_info(id, phoneoutboundrules_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneOutboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->patch_phone_outbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **phoneoutboundrules_create_or_patch** | [**PhoneoutboundrulesCreateOrPatch**](PhoneoutboundrulesCreateOrPatch.md) | The request data. |  |

### Return type

[**GetPhoneOutboundRule200Response**](GetPhoneOutboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_phone_outbound_rule

> <GetPhoneOutboundRule200Response> remove_phone_outbound_rule(id)

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

api_instance = CircuitID::PhoneOutboundRulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_phone_outbound_rule(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->remove_phone_outbound_rule: #{e}"
end
```

#### Using the remove_phone_outbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneOutboundRule200Response>, Integer, Hash)> remove_phone_outbound_rule_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_phone_outbound_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneOutboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneOutboundRulesApi->remove_phone_outbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetPhoneOutboundRule200Response**](GetPhoneOutboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

