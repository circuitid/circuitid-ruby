# CircuitID::VoicemailApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_voicemail**](VoicemailApi.md#find_voicemail) | **GET** /voicemail | Find multiple objects |
| [**get_voicemail**](VoicemailApi.md#get_voicemail) | **GET** /voicemail/{id} | Get object by id |


## find_voicemail

> Object find_voicemail(opts)

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

api_instance = CircuitID::VoicemailApi.new
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
  result = api_instance.find_voicemail(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling VoicemailApi->find_voicemail: #{e}"
end
```

#### Using the find_voicemail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> find_voicemail_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_voicemail_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling VoicemailApi->find_voicemail_with_http_info: #{e}"
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

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voicemail

> get_voicemail(id)

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

api_instance = CircuitID::VoicemailApi.new
id = TODO # Object | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  api_instance.get_voicemail(id)
rescue CircuitID::ApiError => e
  puts "Error when calling VoicemailApi->get_voicemail: #{e}"
end
```

#### Using the get_voicemail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_voicemail_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_voicemail_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue CircuitID::ApiError => e
  puts "Error when calling VoicemailApi->get_voicemail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Object**](.md) | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

