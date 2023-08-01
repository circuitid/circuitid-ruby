# CircuitID::CustomersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a new object |
| [**find_customers**](CustomersApi.md#find_customers) | **GET** /customers | Find multiple objects |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{id} | Get object by id |
| [**patch_customer**](CustomersApi.md#patch_customer) | **PATCH** /customers/{id} | Patch object&#39;s data |
| [**remove_customer**](CustomersApi.md#remove_customer) | **DELETE** /customers/{id} | Delete object by id |


## create_customer

> <GetCustomer200Response> create_customer(customers_create_or_patch)

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

api_instance = CircuitID::CustomersApi.new
customers_create_or_patch = CircuitID::CustomersCreateOrPatch.new({name: 'name_example', default_bill_method: 'credit'}) # CustomersCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_customer(customers_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomer200Response>, Integer, Hash)> create_customer_with_http_info(customers_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_customer_with_http_info(customers_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers_create_or_patch** | [**CustomersCreateOrPatch**](CustomersCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetCustomer200Response**](GetCustomer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_customers

> <FindCustomers200Response> find_customers(opts)

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

api_instance = CircuitID::CustomersApi.new
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
  result = api_instance.find_customers(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->find_customers: #{e}"
end
```

#### Using the find_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindCustomers200Response>, Integer, Hash)> find_customers_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindCustomers200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->find_customers_with_http_info: #{e}"
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

[**FindCustomers200Response**](FindCustomers200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer

> <GetCustomer200Response> get_customer(id)

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

api_instance = CircuitID::CustomersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_customer(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomer200Response>, Integer, Hash)> get_customer_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_customer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetCustomer200Response**](GetCustomer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_customer

> <GetCustomer200Response> patch_customer(id, customers_create_or_patch)

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

api_instance = CircuitID::CustomersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
customers_create_or_patch = CircuitID::CustomersCreateOrPatch.new({name: 'name_example', default_bill_method: 'credit'}) # CustomersCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_customer(id, customers_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->patch_customer: #{e}"
end
```

#### Using the patch_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomer200Response>, Integer, Hash)> patch_customer_with_http_info(id, customers_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_customer_with_http_info(id, customers_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->patch_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **customers_create_or_patch** | [**CustomersCreateOrPatch**](CustomersCreateOrPatch.md) | The request data. |  |

### Return type

[**GetCustomer200Response**](GetCustomer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_customer

> <GetCustomer200Response> remove_customer(id)

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

api_instance = CircuitID::CustomersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_customer(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->remove_customer: #{e}"
end
```

#### Using the remove_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomer200Response>, Integer, Hash)> remove_customer_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_customer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomer200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling CustomersApi->remove_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetCustomer200Response**](GetCustomer200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

