# CircuitID::NumberPortsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_number_port**](NumberPortsApi.md#create_number_port) | **POST** /numberports | Create a new object |
| [**find_number_ports**](NumberPortsApi.md#find_number_ports) | **GET** /numberports | Find multiple objects |
| [**get_number_port**](NumberPortsApi.md#get_number_port) | **GET** /numberports/{id} | Get object by id |
| [**patch_number_port**](NumberPortsApi.md#patch_number_port) | **PATCH** /numberports/{id} | Patch object&#39;s data |


## create_number_port

> <GetNumberPort200Response> create_number_port(numberports)

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

api_instance = CircuitID::NumberPortsApi.new
numberports = CircuitID::Numberports.new({name: 'name_example', type: 'port in', type_of_service: 'business', authorized_person: 'authorized_person_example', desired_due_date: Time.now, account_number: 'account_number_example', account_phone_number: 'account_phone_number_example', office: 'office_example', invoice: 'invoice_example', status: 'processing', destination_type: 'announcements'}) # Numberports | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_number_port(numberports)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->create_number_port: #{e}"
end
```

#### Using the create_number_port_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNumberPort200Response>, Integer, Hash)> create_number_port_with_http_info(numberports)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_number_port_with_http_info(numberports)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNumberPort200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->create_number_port_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **numberports** | [**Numberports**](Numberports.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetNumberPort200Response**](GetNumberPort200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_number_ports

> <FindNumberPorts200Response> find_number_ports(opts)

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

api_instance = CircuitID::NumberPortsApi.new
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
  result = api_instance.find_number_ports(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->find_number_ports: #{e}"
end
```

#### Using the find_number_ports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindNumberPorts200Response>, Integer, Hash)> find_number_ports_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_number_ports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindNumberPorts200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->find_number_ports_with_http_info: #{e}"
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

[**FindNumberPorts200Response**](FindNumberPorts200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_number_port

> <GetNumberPort200Response> get_number_port(id)

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

api_instance = CircuitID::NumberPortsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_number_port(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->get_number_port: #{e}"
end
```

#### Using the get_number_port_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNumberPort200Response>, Integer, Hash)> get_number_port_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_number_port_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNumberPort200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->get_number_port_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetNumberPort200Response**](GetNumberPort200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_number_port

> <GetNumberPort200Response> patch_number_port(id, numberports)

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

api_instance = CircuitID::NumberPortsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
numberports = CircuitID::Numberports.new({name: 'name_example', type: 'port in', type_of_service: 'business', authorized_person: 'authorized_person_example', desired_due_date: Time.now, account_number: 'account_number_example', account_phone_number: 'account_phone_number_example', office: 'office_example', invoice: 'invoice_example', status: 'processing', destination_type: 'announcements'}) # Numberports | The request data.

begin
  # Patch object's data
  result = api_instance.patch_number_port(id, numberports)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->patch_number_port: #{e}"
end
```

#### Using the patch_number_port_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNumberPort200Response>, Integer, Hash)> patch_number_port_with_http_info(id, numberports)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_number_port_with_http_info(id, numberports)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNumberPort200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling NumberPortsApi->patch_number_port_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **numberports** | [**Numberports**](Numberports.md) | The request data. |  |

### Return type

[**GetNumberPort200Response**](GetNumberPort200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

