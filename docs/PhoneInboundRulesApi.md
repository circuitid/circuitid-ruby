# CircuitID::PhoneInboundRulesApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_phone_inbound_rule**](PhoneInboundRulesApi.md#create_phone_inbound_rule) | **POST** /phoneinboundrules | Create a new object |
| [**find_phone_inbound_rules**](PhoneInboundRulesApi.md#find_phone_inbound_rules) | **GET** /phoneinboundrules | Find multiple objects |
| [**get_phone_inbound_rule**](PhoneInboundRulesApi.md#get_phone_inbound_rule) | **GET** /phoneinboundrules/{id} | Get object by id |
| [**patch_phone_inbound_rule**](PhoneInboundRulesApi.md#patch_phone_inbound_rule) | **PATCH** /phoneinboundrules/{id} | Patch object&#39;s data |
| [**remove_phone_inbound_rule**](PhoneInboundRulesApi.md#remove_phone_inbound_rule) | **DELETE** /phoneinboundrules/{id} | Delete object by id |


## create_phone_inbound_rule

> <GetPhoneInboundRule200Response> create_phone_inbound_rule(phoneinboundrules_create_or_patch)

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

api_instance = CircuitID::PhoneInboundRulesApi.new
phoneinboundrules_create_or_patch = CircuitID::PhoneinboundrulesCreateOrPatch.new({name: 'name_example'}) # PhoneinboundrulesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_phone_inbound_rule(phoneinboundrules_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->create_phone_inbound_rule: #{e}"
end
```

#### Using the create_phone_inbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneInboundRule200Response>, Integer, Hash)> create_phone_inbound_rule_with_http_info(phoneinboundrules_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_phone_inbound_rule_with_http_info(phoneinboundrules_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneInboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->create_phone_inbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phoneinboundrules_create_or_patch** | [**PhoneinboundrulesCreateOrPatch**](PhoneinboundrulesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetPhoneInboundRule200Response**](GetPhoneInboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_phone_inbound_rules

> <FindPhoneInboundRules200Response> find_phone_inbound_rules(opts)

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

api_instance = CircuitID::PhoneInboundRulesApi.new
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
  result = api_instance.find_phone_inbound_rules(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->find_phone_inbound_rules: #{e}"
end
```

#### Using the find_phone_inbound_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindPhoneInboundRules200Response>, Integer, Hash)> find_phone_inbound_rules_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_phone_inbound_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindPhoneInboundRules200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->find_phone_inbound_rules_with_http_info: #{e}"
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

[**FindPhoneInboundRules200Response**](FindPhoneInboundRules200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_inbound_rule

> <GetPhoneInboundRule200Response> get_phone_inbound_rule(id)

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

api_instance = CircuitID::PhoneInboundRulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_phone_inbound_rule(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->get_phone_inbound_rule: #{e}"
end
```

#### Using the get_phone_inbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneInboundRule200Response>, Integer, Hash)> get_phone_inbound_rule_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_phone_inbound_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneInboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->get_phone_inbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetPhoneInboundRule200Response**](GetPhoneInboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_phone_inbound_rule

> <GetPhoneInboundRule200Response> patch_phone_inbound_rule(id, phoneinboundrules_create_or_patch)

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

api_instance = CircuitID::PhoneInboundRulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
phoneinboundrules_create_or_patch = CircuitID::PhoneinboundrulesCreateOrPatch.new({name: 'name_example'}) # PhoneinboundrulesCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_phone_inbound_rule(id, phoneinboundrules_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->patch_phone_inbound_rule: #{e}"
end
```

#### Using the patch_phone_inbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneInboundRule200Response>, Integer, Hash)> patch_phone_inbound_rule_with_http_info(id, phoneinboundrules_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_phone_inbound_rule_with_http_info(id, phoneinboundrules_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneInboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->patch_phone_inbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **phoneinboundrules_create_or_patch** | [**PhoneinboundrulesCreateOrPatch**](PhoneinboundrulesCreateOrPatch.md) | The request data. |  |

### Return type

[**GetPhoneInboundRule200Response**](GetPhoneInboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_phone_inbound_rule

> <GetPhoneInboundRule200Response> remove_phone_inbound_rule(id)

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

api_instance = CircuitID::PhoneInboundRulesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_phone_inbound_rule(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->remove_phone_inbound_rule: #{e}"
end
```

#### Using the remove_phone_inbound_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneInboundRule200Response>, Integer, Hash)> remove_phone_inbound_rule_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_phone_inbound_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneInboundRule200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling PhoneInboundRulesApi->remove_phone_inbound_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetPhoneInboundRule200Response**](GetPhoneInboundRule200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

