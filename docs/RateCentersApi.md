# CircuitID::RateCentersApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_rate_centers**](RateCentersApi.md#find_rate_centers) | **GET** /ratecenters | Find multiple objects |
| [**get_rate_center**](RateCentersApi.md#get_rate_center) | **GET** /ratecenters/{id} | Get object by id |


## find_rate_centers

> <FindRateCenters200Response> find_rate_centers(opts)

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

api_instance = CircuitID::RateCentersApi.new
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
  result = api_instance.find_rate_centers(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling RateCentersApi->find_rate_centers: #{e}"
end
```

#### Using the find_rate_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindRateCenters200Response>, Integer, Hash)> find_rate_centers_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_rate_centers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindRateCenters200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling RateCentersApi->find_rate_centers_with_http_info: #{e}"
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

[**FindRateCenters200Response**](FindRateCenters200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rate_center

> <GetRateCenter200Response> get_rate_center(id)

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

api_instance = CircuitID::RateCentersApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_rate_center(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling RateCentersApi->get_rate_center: #{e}"
end
```

#### Using the get_rate_center_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRateCenter200Response>, Integer, Hash)> get_rate_center_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_rate_center_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRateCenter200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling RateCentersApi->get_rate_center_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetRateCenter200Response**](GetRateCenter200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

