=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.8
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module CircuitID
  class OfficesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new object
    # Add a new object to the system.
    # @param offices [Offices] The JSON object that will be posted to the REST API endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_office(offices, opts = {})
      data, _status_code, _headers = create_office_with_http_info(offices, opts)
      data
    end

    # Create a new object
    # Add a new object to the system.
    # @param offices [Offices] The JSON object that will be posted to the REST API endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_office_with_http_info(offices, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OfficesApi.create_office ...'
      end
      # verify the required parameter 'offices' is set
      if @api_client.config.client_side_validation && offices.nil?
        fail ArgumentError, "Missing the required parameter 'offices' when calling OfficesApi.create_office"
      end
      # resource path
      local_var_path = '/offices'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(offices)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"OfficesApi.create_office",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#create_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find multiple objects
    # Search and retrieve multiple objects simultaneously. 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :search Filter results by the specified value.
    # @option opts [Object] :limit $limit will return only the number of results you specify.
    # @option opts [Object] :skip $skip will skip the specified number of results.
    # @option opts [Object] :sort $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
    # @option opts [Object] :select $select allows to pick which fields to include in the result.
    # @option opts [Object] :_or Find all records that match any of the given criteria.
    # @option opts [Object] :_and Find all records that match all of the given criteria.
    # @return [FindOffices200Response]
    def find_offices(opts = {})
      data, _status_code, _headers = find_offices_with_http_info(opts)
      data
    end

    # Find multiple objects
    # Search and retrieve multiple objects simultaneously. 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :search Filter results by the specified value.
    # @option opts [Object] :limit $limit will return only the number of results you specify.
    # @option opts [Object] :skip $skip will skip the specified number of results.
    # @option opts [Object] :sort $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
    # @option opts [Object] :select $select allows to pick which fields to include in the result.
    # @option opts [Object] :_or Find all records that match any of the given criteria.
    # @option opts [Object] :_and Find all records that match all of the given criteria.
    # @return [Array<(FindOffices200Response, Integer, Hash)>] FindOffices200Response data, response status code and response headers
    def find_offices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OfficesApi.find_offices ...'
      end
      # resource path
      local_var_path = '/offices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'$search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'$limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'$skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'$sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'$select'] = opts[:'select'] if !opts[:'select'].nil?
      query_params[:'$or'] = opts[:'_or'] if !opts[:'_or'].nil?
      query_params[:'$and'] = opts[:'_and'] if !opts[:'_and'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FindOffices200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"OfficesApi.find_offices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#find_offices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get object by id
    # Get an object from the REST API Endpoint by its unique id.
    # @param id [Object] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_office(id, opts = {})
      data, _status_code, _headers = get_office_with_http_info(id, opts)
      data
    end

    # Get object by id
    # Get an object from the REST API Endpoint by its unique id.
    # @param id [Object] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_office_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OfficesApi.get_office ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OfficesApi.get_office"
      end
      # resource path
      local_var_path = '/offices/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"OfficesApi.get_office",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#get_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch object's data
    # Make updates to specific fields within the record without replacing the entire dataset.
    # @param id [Object] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param offices [Offices] The request data.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def patch_office(id, offices, opts = {})
      data, _status_code, _headers = patch_office_with_http_info(id, offices, opts)
      data
    end

    # Patch object&#39;s data
    # Make updates to specific fields within the record without replacing the entire dataset.
    # @param id [Object] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param offices [Offices] The request data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def patch_office_with_http_info(id, offices, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OfficesApi.patch_office ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OfficesApi.patch_office"
      end
      # verify the required parameter 'offices' is set
      if @api_client.config.client_side_validation && offices.nil?
        fail ArgumentError, "Missing the required parameter 'offices' when calling OfficesApi.patch_office"
      end
      # resource path
      local_var_path = '/offices/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(offices)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"OfficesApi.patch_office",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#patch_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete object by id
    # Delete an object by id, removing it from the service.
    # @param id [Object] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def remove_office(id, opts = {})
      data, _status_code, _headers = remove_office_with_http_info(id, opts)
      data
    end

    # Delete object by id
    # Delete an object by id, removing it from the service.
    # @param id [Object] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def remove_office_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OfficesApi.remove_office ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OfficesApi.remove_office"
      end
      # resource path
      local_var_path = '/offices/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"OfficesApi.remove_office",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#remove_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end