# CircuitID::ContactsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | Create a new object |
| [**find_contacts**](ContactsApi.md#find_contacts) | **GET** /contacts | Find multiple objects |
| [**get_contact**](ContactsApi.md#get_contact) | **GET** /contacts/{id} | Get object by id |
| [**patch_contact**](ContactsApi.md#patch_contact) | **PATCH** /contacts/{id} | Patch object&#39;s data |
| [**remove_contact**](ContactsApi.md#remove_contact) | **DELETE** /contacts/{id} | Delete object by id |


## create_contact

> <GetContact200Response> create_contact(contacts_create_or_patch)

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

api_instance = CircuitID::ContactsApi.new
contacts_create_or_patch = CircuitID::ContactsCreateOrPatch.new({first: 'first_example'}) # ContactsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_contact(contacts_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContact200Response>, Integer, Hash)> create_contact_with_http_info(contacts_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_contact_with_http_info(contacts_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContact200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts_create_or_patch** | [**ContactsCreateOrPatch**](ContactsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetContact200Response**](GetContact200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_contacts

> <FindContacts200Response> find_contacts(opts)

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

api_instance = CircuitID::ContactsApi.new
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
  result = api_instance.find_contacts(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->find_contacts: #{e}"
end
```

#### Using the find_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindContacts200Response>, Integer, Hash)> find_contacts_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindContacts200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->find_contacts_with_http_info: #{e}"
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

[**FindContacts200Response**](FindContacts200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact

> <GetContact200Response> get_contact(id)

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

api_instance = CircuitID::ContactsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_contact(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->get_contact: #{e}"
end
```

#### Using the get_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContact200Response>, Integer, Hash)> get_contact_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_contact_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContact200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->get_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetContact200Response**](GetContact200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_contact

> <GetContact200Response> patch_contact(id, contacts_create_or_patch)

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

api_instance = CircuitID::ContactsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
contacts_create_or_patch = CircuitID::ContactsCreateOrPatch.new({first: 'first_example'}) # ContactsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_contact(id, contacts_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->patch_contact: #{e}"
end
```

#### Using the patch_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContact200Response>, Integer, Hash)> patch_contact_with_http_info(id, contacts_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_contact_with_http_info(id, contacts_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContact200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->patch_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **contacts_create_or_patch** | [**ContactsCreateOrPatch**](ContactsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetContact200Response**](GetContact200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_contact

> <GetContact200Response> remove_contact(id)

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

api_instance = CircuitID::ContactsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_contact(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->remove_contact: #{e}"
end
```

#### Using the remove_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContact200Response>, Integer, Hash)> remove_contact_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_contact_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContact200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling ContactsApi->remove_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetContact200Response**](GetContact200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

