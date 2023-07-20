# CircuitID::LicensesApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_license**](LicensesApi.md#create_license) | **POST** /licenses | Create a new object |
| [**find_licenses**](LicensesApi.md#find_licenses) | **GET** /licenses | Find multiple objects |
| [**get_license**](LicensesApi.md#get_license) | **GET** /licenses/{id} | Get object by id |
| [**patch_license**](LicensesApi.md#patch_license) | **PATCH** /licenses/{id} | Patch object&#39;s data |
| [**remove_license**](LicensesApi.md#remove_license) | **DELETE** /licenses/{id} | Delete object by id |


## create_license

> Object create_license(licenses)

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

api_instance = CircuitID::LicensesApi.new
licenses = CircuitID::Licenses.new({order: 3.56, object: 3.56, ref: 3.56}) # Licenses | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_license(licenses)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->create_license: #{e}"
end
```

#### Using the create_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_license_with_http_info(licenses)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_license_with_http_info(licenses)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->create_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **licenses** | [**Licenses**](Licenses.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_licenses

> <FindLicenses200Response> find_licenses(opts)

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

api_instance = CircuitID::LicensesApi.new
opts = {
  search: TODO, # Object | Filter results by the specified value.
  limit: TODO, # Object | $limit will return only the number of results you specify.
  skip: TODO, # Object | $skip will skip the specified number of results.
  sort: TODO, # Object | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
  select: TODO, # Object | $select allows to pick which fields to include in the result.
  _or: TODO, # Object | Find all records that match any of the given criteria.
  _and: TODO # Object | Find all records that match all of the given criteria.
}

begin
  # Find multiple objects
  result = api_instance.find_licenses(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->find_licenses: #{e}"
end
```

#### Using the find_licenses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindLicenses200Response>, Integer, Hash)> find_licenses_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_licenses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindLicenses200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->find_licenses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | [**Object**](.md) | Filter results by the specified value. | [optional] |
| **limit** | [**Object**](.md) | $limit will return only the number of results you specify. | [optional] |
| **skip** | [**Object**](.md) | $skip will skip the specified number of results. | [optional] |
| **sort** | [**Object**](.md) | $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending). | [optional] |
| **select** | [**Object**](.md) | $select allows to pick which fields to include in the result. | [optional] |
| **_or** | [**Object**](.md) | Find all records that match any of the given criteria. | [optional] |
| **_and** | [**Object**](.md) | Find all records that match all of the given criteria. | [optional] |

### Return type

[**FindLicenses200Response**](FindLicenses200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_license

> Object get_license(id)

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

api_instance = CircuitID::LicensesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_license(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->get_license: #{e}"
end
```

#### Using the get_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_license_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_license_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->get_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_license

> Object patch_license(id, licenses)

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

api_instance = CircuitID::LicensesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
licenses = CircuitID::Licenses.new({order: 3.56, object: 3.56, ref: 3.56}) # Licenses | The request data.

begin
  # Patch object's data
  result = api_instance.patch_license(id, licenses)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->patch_license: #{e}"
end
```

#### Using the patch_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_license_with_http_info(id, licenses)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_license_with_http_info(id, licenses)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->patch_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **licenses** | [**Licenses**](Licenses.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_license

> Object remove_license(id)

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

api_instance = CircuitID::LicensesApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_license(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->remove_license: #{e}"
end
```

#### Using the remove_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_license_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_license_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling LicensesApi->remove_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

