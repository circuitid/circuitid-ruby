# CircuitID::InvoiceItemsApi

All URIs are relative to *https://cloud9.circuitid.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_invoice_items**](InvoiceItemsApi.md#find_invoice_items) | **GET** /invoiceitems | Find multiple objects |
| [**get_invoice_item**](InvoiceItemsApi.md#get_invoice_item) | **GET** /invoiceitems/{id} | Get object by id |


## find_invoice_items

> <FindInvoiceItems200Response> find_invoice_items(opts)

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

api_instance = CircuitID::InvoiceItemsApi.new
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
  result = api_instance.find_invoice_items(opts)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling InvoiceItemsApi->find_invoice_items: #{e}"
end
```

#### Using the find_invoice_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindInvoiceItems200Response>, Integer, Hash)> find_invoice_items_with_http_info(opts)

```ruby
begin
  # Find multiple objects
  data, status_code, headers = api_instance.find_invoice_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindInvoiceItems200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling InvoiceItemsApi->find_invoice_items_with_http_info: #{e}"
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

[**FindInvoiceItems200Response**](FindInvoiceItems200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoice_item

> <GetInvoiceItem200Response> get_invoice_item(id)

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

api_instance = CircuitID::InvoiceItemsApi.new
id = 'id_example' # String | The ObjectId (unique 12 bytes ID) of record you would like to GET.

begin
  # Get object by id
  result = api_instance.get_invoice_item(id)
  p result
rescue CircuitID::ApiError => e
  puts "Error when calling InvoiceItemsApi->get_invoice_item: #{e}"
end
```

#### Using the get_invoice_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoiceItem200Response>, Integer, Hash)> get_invoice_item_with_http_info(id)

```ruby
begin
  # Get object by id
  data, status_code, headers = api_instance.get_invoice_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoiceItem200Response>
rescue CircuitID::ApiError => e
  puts "Error when calling InvoiceItemsApi->get_invoice_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ObjectId (unique 12 bytes ID) of record you would like to GET. |  |

### Return type

[**GetInvoiceItem200Response**](GetInvoiceItem200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

