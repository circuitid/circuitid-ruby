=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.20
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module CircuitID
  class LicensesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new object
    # Add a new object to the system.
    # @param licenses_create_or_patch [LicensesCreateOrPatch] The JSON object that will be posted to the REST API endpoint.
    # @param [Hash] opts the optional parameters
    # @return [GetLicense200Response]
    def create_license(licenses_create_or_patch, opts = {})
      data, _status_code, _headers = create_license_with_http_info(licenses_create_or_patch, opts)
      data
    end

    # Create a new object
    # Add a new object to the system.
    # @param licenses_create_or_patch [LicensesCreateOrPatch] The JSON object that will be posted to the REST API endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetLicense200Response, Integer, Hash)>] GetLicense200Response data, response status code and response headers
    def create_license_with_http_info(licenses_create_or_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.create_license ...'
      end
      # verify the required parameter 'licenses_create_or_patch' is set
      if @api_client.config.client_side_validation && licenses_create_or_patch.nil?
        fail ArgumentError, "Missing the required parameter 'licenses_create_or_patch' when calling LicensesApi.create_license"
      end
      # resource path
      local_var_path = '/licenses'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(licenses_create_or_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'GetLicense200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"LicensesApi.create_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#create_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find multiple objects
    # Search and retrieve multiple objects simultaneously. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Filter results by the specified value.
    # @option opts [Integer] :limit $limit will return only the number of results you specify.
    # @option opts [Integer] :skip $skip will skip the specified number of results.
    # @option opts [Object] :sort $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
    # @option opts [Array<String>] :select $select allows to pick which fields to include in the result.
    # @option opts [Array<Object>] :_or Find all records that match any of the given criteria.
    # @option opts [Array<Object>] :_and Find all records that match all of the given criteria.
    # @return [FindLicenses200Response]
    def find_licenses(opts = {})
      data, _status_code, _headers = find_licenses_with_http_info(opts)
      data
    end

    # Find multiple objects
    # Search and retrieve multiple objects simultaneously. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Filter results by the specified value.
    # @option opts [Integer] :limit $limit will return only the number of results you specify.
    # @option opts [Integer] :skip $skip will skip the specified number of results.
    # @option opts [Object] :sort $sort will sort based on the object you provide. It can contain a list of properties by which to sort mapped to the order (1 ascending, -1 descending).
    # @option opts [Array<String>] :select $select allows to pick which fields to include in the result.
    # @option opts [Array<Object>] :_or Find all records that match any of the given criteria.
    # @option opts [Array<Object>] :_and Find all records that match all of the given criteria.
    # @return [Array<(FindLicenses200Response, Integer, Hash)>] FindLicenses200Response data, response status code and response headers
    def find_licenses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.find_licenses ...'
      end
      # resource path
      local_var_path = '/licenses'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'$search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'$limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'$skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'$sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'$select'] = @api_client.build_collection_param(opts[:'select'], :multi) if !opts[:'select'].nil?
      query_params[:'$or'] = @api_client.build_collection_param(opts[:'_or'], :multi) if !opts[:'_or'].nil?
      query_params[:'$and'] = @api_client.build_collection_param(opts[:'_and'], :multi) if !opts[:'_and'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FindLicenses200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"LicensesApi.find_licenses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#find_licenses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get object by id
    # Get an object from the REST API Endpoint by its unique id.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [GetLicense200Response]
    def get_license(id, opts = {})
      data, _status_code, _headers = get_license_with_http_info(id, opts)
      data
    end

    # Get object by id
    # Get an object from the REST API Endpoint by its unique id.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetLicense200Response, Integer, Hash)>] GetLicense200Response data, response status code and response headers
    def get_license_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.get_license ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LicensesApi.get_license"
      end
      # resource path
      local_var_path = '/licenses/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetLicense200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"LicensesApi.get_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#get_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch object's data
    # Make updates to specific fields within the record without replacing the entire dataset.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param licenses_create_or_patch [LicensesCreateOrPatch] The request data.
    # @param [Hash] opts the optional parameters
    # @return [GetLicense200Response]
    def patch_license(id, licenses_create_or_patch, opts = {})
      data, _status_code, _headers = patch_license_with_http_info(id, licenses_create_or_patch, opts)
      data
    end

    # Patch object&#39;s data
    # Make updates to specific fields within the record without replacing the entire dataset.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param licenses_create_or_patch [LicensesCreateOrPatch] The request data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetLicense200Response, Integer, Hash)>] GetLicense200Response data, response status code and response headers
    def patch_license_with_http_info(id, licenses_create_or_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.patch_license ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LicensesApi.patch_license"
      end
      # verify the required parameter 'licenses_create_or_patch' is set
      if @api_client.config.client_side_validation && licenses_create_or_patch.nil?
        fail ArgumentError, "Missing the required parameter 'licenses_create_or_patch' when calling LicensesApi.patch_license"
      end
      # resource path
      local_var_path = '/licenses/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(licenses_create_or_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'GetLicense200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"LicensesApi.patch_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#patch_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete object by id
    # Delete an object by id, removing it from the service.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [GetLicense200Response]
    def remove_license(id, opts = {})
      data, _status_code, _headers = remove_license_with_http_info(id, opts)
      data
    end

    # Delete object by id
    # Delete an object by id, removing it from the service.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetLicense200Response, Integer, Hash)>] GetLicense200Response data, response status code and response headers
    def remove_license_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.remove_license ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LicensesApi.remove_license"
      end
      # resource path
      local_var_path = '/licenses/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetLicense200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"LicensesApi.remove_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#remove_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
