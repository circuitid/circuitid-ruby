# CircuitID::OfficesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_office**](OfficesApi.md#create_office) | **POST** /offices | Create a new object |
| [**find_offices**](OfficesApi.md#find_offices) | **GET** /offices | Find multiple objects |
| [**get_office**](OfficesApi.md#get_office) | **GET** /offices/{id} | Get object by id |
| [**patch_office**](OfficesApi.md#patch_office) | **PATCH** /offices/{id} | Patch object&#39;s data |
| [**remove_office**](OfficesApi.md#remove_office) | **DELETE** /offices/{id} | Delete object by id |


## create_office

> <GetOffice200Response> create_office(offices_create_or_patch)

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

api_instance = CircuitID::OfficesApi.new
offices_create_or_patch = CircuitID::OfficesCreateOrPatch.new({name: 'name_example', street_number: 'street_number_example', street_name: 'street_name_example', street_suffix: 'street_suffix_example', country: 'country_example'}) # OfficesCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_office(offices_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->create_office: #{e}"
end
```

#### Using the create_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOffice200Response>, Integer, Hash)> create_office_with_http_info(offices_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_office_with_http_info(offices_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOffice200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->create_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offices_create_or_patch** | [**OfficesCreateOrPatch**](OfficesCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetOffice200Response**](GetOffice200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_offices

> <FindOffices200Response> find_offices(opts)

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

api_instance = CircuitID::OfficesApi.new
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
  result = api_instance.find_offices(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->find_offices: #{e}"
end
```

#### Using the find_offices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindOffices200Response>, Integer, Hash)> find_offices_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_offices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindOffices200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->find_offices_with_http_info: #{e}"
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

[**FindOffices200Response**](FindOffices200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_office

> <GetOffice200Response> get_office(id)

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

api_instance = CircuitID::OfficesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_office(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->get_office: #{e}"
end
```

#### Using the get_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOffice200Response>, Integer, Hash)> get_office_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_office_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOffice200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->get_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetOffice200Response**](GetOffice200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_office

> <GetOffice200Response> patch_office(id, offices_create_or_patch)

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

api_instance = CircuitID::OfficesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
offices_create_or_patch = CircuitID::OfficesCreateOrPatch.new({name: 'name_example', street_number: 'street_number_example', street_name: 'street_name_example', street_suffix: 'street_suffix_example', country: 'country_example'}) # OfficesCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_office(id, offices_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->patch_office: #{e}"
end
```

#### Using the patch_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOffice200Response>, Integer, Hash)> patch_office_with_http_info(id, offices_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_office_with_http_info(id, offices_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOffice200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->patch_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **offices_create_or_patch** | [**OfficesCreateOrPatch**](OfficesCreateOrPatch.md) | The request data. |  |

### Return type

[**GetOffice200Response**](GetOffice200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_office

> <GetOffice200Response> remove_office(id)

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

api_instance = CircuitID::OfficesApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_office(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->remove_office: #{e}"
end
```

#### Using the remove_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOffice200Response>, Integer, Hash)> remove_office_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_office_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOffice200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling OfficesApi->remove_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetOffice200Response**](GetOffice200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

