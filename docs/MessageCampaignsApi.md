# CircuitID::MessageCampaignsApi

All URIs are relative to *https://rest.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_message_campaign**](MessageCampaignsApi.md#create_message_campaign) | **POST** /messagecampaigns | Create a new object |
| [**find_message_campaigns**](MessageCampaignsApi.md#find_message_campaigns) | **GET** /messagecampaigns | Find multiple objects |
| [**get_message_campaign**](MessageCampaignsApi.md#get_message_campaign) | **GET** /messagecampaigns/{id} | Get object by id |
| [**patch_message_campaign**](MessageCampaignsApi.md#patch_message_campaign) | **PATCH** /messagecampaigns/{id} | Patch object&#39;s data |
| [**remove_message_campaign**](MessageCampaignsApi.md#remove_message_campaign) | **DELETE** /messagecampaigns/{id} | Delete object by id |


## create_message_campaign

> <GetMessageCampaign200Response> create_message_campaign(messagecampaigns_create_or_patch)

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

api_instance = CircuitID::MessageCampaignsApi.new
messagecampaigns_create_or_patch = CircuitID::MessagecampaignsCreateOrPatch.new({name: 'name_example', brand_id: 'brand_id_example', order: 'order_example'}) # MessagecampaignsCreateOrPatch | The JSON object that will be posted to the REST API endpoint.

begin
  # Create a new object
  result = api_instance.create_message_campaign(messagecampaigns_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->create_message_campaign: #{e}"
end
```

#### Using the create_message_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessageCampaign200Response>, Integer, Hash)> create_message_campaign_with_http_info(messagecampaigns_create_or_patch)

```ruby
begin
  # Create a new object
  data, status_code, headers = api_instance.create_message_campaign_with_http_info(messagecampaigns_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageCampaign200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->create_message_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messagecampaigns_create_or_patch** | [**MessagecampaignsCreateOrPatch**](MessagecampaignsCreateOrPatch.md) | The JSON object that will be posted to the REST API endpoint. |  |

### Return type

[**GetMessageCampaign200Response**](GetMessageCampaign200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_message_campaigns

> <FindMessageCampaigns200Response> find_message_campaigns(opts)

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

api_instance = CircuitID::MessageCampaignsApi.new
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
  result = api_instance.find_message_campaigns(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->find_message_campaigns: #{e}"
end
```

#### Using the find_message_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindMessageCampaigns200Response>, Integer, Hash)> find_message_campaigns_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_message_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindMessageCampaigns200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->find_message_campaigns_with_http_info: #{e}"
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

[**FindMessageCampaigns200Response**](FindMessageCampaigns200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message_campaign

> <GetMessageCampaign200Response> get_message_campaign(id)

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

api_instance = CircuitID::MessageCampaignsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_message_campaign(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->get_message_campaign: #{e}"
end
```

#### Using the get_message_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessageCampaign200Response>, Integer, Hash)> get_message_campaign_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_message_campaign_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageCampaign200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->get_message_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMessageCampaign200Response**](GetMessageCampaign200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_message_campaign

> <GetMessageCampaign200Response> patch_message_campaign(id, messagecampaigns_create_or_patch)

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

api_instance = CircuitID::MessageCampaignsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.
messagecampaigns_create_or_patch = CircuitID::MessagecampaignsCreateOrPatch.new({name: 'name_example', brand_id: 'brand_id_example', order: 'order_example'}) # MessagecampaignsCreateOrPatch | The request data.

begin
  # Patch object's data
  result = api_instance.patch_message_campaign(id, messagecampaigns_create_or_patch)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->patch_message_campaign: #{e}"
end
```

#### Using the patch_message_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessageCampaign200Response>, Integer, Hash)> patch_message_campaign_with_http_info(id, messagecampaigns_create_or_patch)

```ruby
begin
  # Patch object's data
  data, status_code, headers = api_instance.patch_message_campaign_with_http_info(id, messagecampaigns_create_or_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageCampaign200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->patch_message_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |
| **messagecampaigns_create_or_patch** | [**MessagecampaignsCreateOrPatch**](MessagecampaignsCreateOrPatch.md) | The request data. |  |

### Return type

[**GetMessageCampaign200Response**](GetMessageCampaign200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_message_campaign

> <GetMessageCampaign200Response> remove_message_campaign(id)

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

api_instance = CircuitID::MessageCampaignsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Delete object by id
  result = api_instance.remove_message_campaign(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->remove_message_campaign: #{e}"
end
```

#### Using the remove_message_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessageCampaign200Response>, Integer, Hash)> remove_message_campaign_with_http_info(id)

```ruby
begin
  # Delete object by id
  data, status_code, headers = api_instance.remove_message_campaign_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageCampaign200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling MessageCampaignsApi->remove_message_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetMessageCampaign200Response**](GetMessageCampaign200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

