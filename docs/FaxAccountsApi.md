# CircuitID::FaxAccountsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fax_account**](FaxAccountsApi.md#create_fax_account) | **POST** /faxaccounts | Create a new object |
| [**find_fax_accounts**](FaxAccountsApi.md#find_fax_accounts) | **GET** /faxaccounts | Find multiple objects |
| [**get_fax_account**](FaxAccountsApi.md#get_fax_account) | **GET** /faxaccounts/{id} | Get object by id |
| [**patch_fax_account**](FaxAccountsApi.md#patch_fax_account) | **PATCH** /faxaccounts/{id} | Patch object&#39;s data |
| [**remove_fax_account**](FaxAccountsApi.md#remove_fax_account) | **DELETE** /faxaccounts/{id} | Delete object by id |


## create_fax_account

> Object create_fax_account(faxaccounts)

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

api_instance = CircuitID::FaxAccountsApi.new
faxaccounts = CircuitID::Faxaccounts.new({name: 3.56}) # Faxaccounts | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_fax_account(faxaccounts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->create_fax_account: #{e}"
end
```

#### Using the create_fax_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_fax_account_with_http_info(faxaccounts)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_fax_account_with_http_info(faxaccounts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->create_fax_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faxaccounts** | [**Faxaccounts**](Faxaccounts.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_fax_accounts

> <FindFaxAccounts200Response> find_fax_accounts(opts)

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

api_instance = CircuitID::FaxAccountsApi.new
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
  result = api_instance.find_fax_accounts(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->find_fax_accounts: #{e}"
end
```

#### Using the find_fax_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindFaxAccounts200Response>, Integer, Hash)> find_fax_accounts_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_fax_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindFaxAccounts200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->find_fax_accounts_with_http_info: #{e}"
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

[**FindFaxAccounts200Response**](FindFaxAccounts200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fax_account

> Object get_fax_account(id)

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

api_instance = CircuitID::FaxAccountsApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_fax_account(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->get_fax_account: #{e}"
end
```

#### Using the get_fax_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_fax_account_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_fax_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->get_fax_account_with_http_info: #{e}"
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


## patch_fax_account

> Object patch_fax_account(id, faxaccounts)

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

api_instance = CircuitID::FaxAccountsApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.
faxaccounts = CircuitID::Faxaccounts.new({name: 3.56}) # Faxaccounts | The request data.

begin
  # Patch object's data
  result = api_instance.patch_fax_account(id, faxaccounts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->patch_fax_account: #{e}"
end
```

#### Using the patch_fax_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_fax_account_with_http_info(id, faxaccounts)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_fax_account_with_http_info(id, faxaccounts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->patch_fax_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **faxaccounts** | [**Faxaccounts**](Faxaccounts.md) | The request data. |  |

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_fax_account

> Object remove_fax_account(id)

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

api_instance = CircuitID::FaxAccountsApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_fax_account(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->remove_fax_account: #{e}"
end
```

#### Using the remove_fax_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_fax_account_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_fax_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling FaxAccountsApi->remove_fax_account_with_http_info: #{e}"
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

