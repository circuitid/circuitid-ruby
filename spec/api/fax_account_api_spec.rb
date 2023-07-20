=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.8
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CircuitID::FaxAccountApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FaxAccountApi' do
  before do
    # run before each test
    @api_instance = CircuitID::FaxAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FaxAccountApi' do
    it 'should create an instance of FaxAccountApi' do
      expect(@api_instance).to be_instance_of(CircuitID::FaxAccountApi)
    end
  end

  # unit tests for create_fax_account
  # Create a new object
  # Add a new object to the system.
  # @param faxaccounts The JSON object that will be posted to the REST API endpoint.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'create_fax_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for find_fax_account
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
  # @return [FindFaxAccount200Response]
  describe 'find_fax_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_fax_account
  # Get object by id
  # Get an object from the REST API Endpoint by its unique id.
  # @param id The ObjectId (unique 12 bytes ID) of record you would like to GET.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_fax_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_fax_account
  # Patch object&#39;s data
  # Make updates to specific fields within the record without replacing the entire dataset.
  # @param id The ObjectId (unique 12 bytes ID) of record you would like to GET.
  # @param faxaccounts The request data.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'patch_fax_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for remove_fax_account
  # Delete object by id
  # Delete an object by id, removing it from the service.
  # @param id The ObjectId (unique 12 bytes ID) of record you would like to GET.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'remove_fax_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
