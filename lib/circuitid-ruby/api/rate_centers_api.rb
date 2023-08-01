=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.22
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module CircuitID
  class RateCentersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
    # @return [FindRateCenters200Response]
    def find_rate_centers(opts = {})
      data, _status_code, _headers = find_rate_centers_with_http_info(opts)
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
    # @return [Array<(FindRateCenters200Response, Integer, Hash)>] FindRateCenters200Response data, response status code and response headers
    def find_rate_centers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateCentersApi.find_rate_centers ...'
      end
      # resource path
      local_var_path = '/ratecenters'

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
      return_type = opts[:debug_return_type] || 'FindRateCenters200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"RateCentersApi.find_rate_centers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateCentersApi#find_rate_centers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get object by id
    # Get an object from the REST API Endpoint by its unique id.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [GetRateCenter200Response]
    def get_rate_center(id, opts = {})
      data, _status_code, _headers = get_rate_center_with_http_info(id, opts)
      data
    end

    # Get object by id
    # Get an object from the REST API Endpoint by its unique id.
    # @param id [String] The ObjectId (unique 12 bytes ID) of record you would like to GET.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRateCenter200Response, Integer, Hash)>] GetRateCenter200Response data, response status code and response headers
    def get_rate_center_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateCentersApi.get_rate_center ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RateCentersApi.get_rate_center"
      end
      # resource path
      local_var_path = '/ratecenters/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetRateCenter200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['jwt']

      new_options = opts.merge(
        :operation => :"RateCentersApi.get_rate_center",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateCentersApi#get_rate_center\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
