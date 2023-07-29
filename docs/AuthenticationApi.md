# CircuitID::AuthenticationApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_authentication**](AuthenticationApi.md#create_authentication) | **POST** /authentication | Create a new object |


## create_authentication

> <CreateAuthentication200Response> create_authentication(authentication)

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

api_instance = CircuitID::AuthenticationApi.new
authentication = CircuitID::Authentication.new({username: 'username_example', password: 'password_example', strategy: 'local'}) # Authentication | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_authentication(authentication)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling AuthenticationApi->create_authentication: #{e}"
end
```

#### Using the create_authentication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAuthentication200Response>, Integer, Hash)> create_authentication_with_http_info(authentication)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_authentication_with_http_info(authentication)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAuthentication200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling AuthenticationApi->create_authentication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication** | [**Authentication**](Authentication.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**CreateAuthentication200Response**](CreateAuthentication200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

