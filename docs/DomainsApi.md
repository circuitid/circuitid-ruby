# CircuitID::DomainsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_domain**](DomainsApi.md#create_domain) | **POST** /domains | Create a new object |
| [**find_domains**](DomainsApi.md#find_domains) | **GET** /domains | Find multiple objects |
| [**get_domain**](DomainsApi.md#get_domain) | **GET** /domains/{id} | Get object by id |
| [**patch_domain**](DomainsApi.md#patch_domain) | **PATCH** /domains/{id} | Patch object&#39;s data |
| [**remove_domain**](DomainsApi.md#remove_domain) | **DELETE** /domains/{id} | Delete object by id |


## create_domain

> <GetDomain200Response> create_domain(domains)

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

api_instance = CircuitID::DomainsApi.new
domains = CircuitID::Domains.new({name: 'name_example'}) # Domains | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_domain(domains)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->create_domain: #{e}"
end
```

#### Using the create_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomain200Response>, Integer, Hash)> create_domain_with_http_info(domains)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_domain_with_http_info(domains)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomain200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->create_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domains** | [**Domains**](Domains.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetDomain200Response**](GetDomain200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_domains

> <FindDomains200Response> find_domains(opts)

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

api_instance = CircuitID::DomainsApi.new
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
  result = api_instance.find_domains(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->find_domains: #{e}"
end
```

#### Using the find_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindDomains200Response>, Integer, Hash)> find_domains_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_domains_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindDomains200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->find_domains_with_http_info: #{e}"
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

[**FindDomains200Response**](FindDomains200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain

> <GetDomain200Response> get_domain(id)

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

api_instance = CircuitID::DomainsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_domain(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->get_domain: #{e}"
end
```

#### Using the get_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomain200Response>, Integer, Hash)> get_domain_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_domain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomain200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->get_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetDomain200Response**](GetDomain200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_domain

> <GetDomain200Response> patch_domain(id, domains)

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

api_instance = CircuitID::DomainsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
domains = CircuitID::Domains.new({name: 'name_example'}) # Domains | The request data.

begin
  # Patch object's data
  result = api_instance.patch_domain(id, domains)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->patch_domain: #{e}"
end
```

#### Using the patch_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomain200Response>, Integer, Hash)> patch_domain_with_http_info(id, domains)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_domain_with_http_info(id, domains)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomain200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->patch_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **domains** | [**Domains**](Domains.md) | The request data. |  |

### Return type

[**GetDomain200Response**](GetDomain200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_domain

> <GetDomain200Response> remove_domain(id)

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

api_instance = CircuitID::DomainsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_domain(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->remove_domain: #{e}"
end
```

#### Using the remove_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomain200Response>, Integer, Hash)> remove_domain_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_domain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomain200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling DomainsApi->remove_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetDomain200Response**](GetDomain200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

