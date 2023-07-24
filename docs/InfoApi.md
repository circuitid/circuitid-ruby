# CircuitID::InfoApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_info**](InfoApi.md#get_info) | **GET** /info | Get object |


## get_info

> Object get_info

Get object

Returns an object containing the requested information.

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

api_instance = CircuitID::InfoApi.new

begin
  # Get object
  result = api_instance.get_info
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling InfoApi->get_info: #{e}"
end
```

#### Using the get_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_info_with_http_info

```ruby
begin
  # Get object
  data, status_code, headers = api_instance.get_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue CircuitID::ApiError => e
  puts "Error when calling InfoApi->get_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

