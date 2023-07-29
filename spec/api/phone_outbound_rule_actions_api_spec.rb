=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.19
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CircuitID::PhoneOutboundRuleActionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PhoneOutboundRuleActionsApi' do
  before do
    # run before each test
    @api_instance = CircuitID::PhoneOutboundRuleActionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PhoneOutboundRuleActionsApi' do
    it 'should create an instance of PhoneOutboundRuleActionsApi' do
      expect(@api_instance).to be_instance_of(CircuitID::PhoneOutboundRuleActionsApi)
    end
  end

  # unit tests for create_phone_outbound_rule_action
  # Create a new object
  # Add a new object to the system.
  # @param phoneoutboundruleactions The JSON object that will be posted to the REST API endpoint.
  # @param [Hash] opts the optional parameters
  # @return [GetPhoneOutboundRuleAction200Response]
  describe 'create_phone_outbound_rule_action test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for find_phone_outbound_rule_actions
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
  # @return [FindPhoneOutboundRuleActions200Response]
  describe 'find_phone_outbound_rule_actions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_phone_outbound_rule_action
  # Get object by id
  # Get an object from the REST API Endpoint by its unique id.
  # @param id The ObjectId (unique 12 bytes ID) of record you would like to GET.
  # @param [Hash] opts the optional parameters
  # @return [GetPhoneOutboundRuleAction200Response]
  describe 'get_phone_outbound_rule_action test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_phone_outbound_rule_action
  # Patch object&#39;s data
  # Make updates to specific fields within the record without replacing the entire dataset.
  # @param id The ObjectId (unique 12 bytes ID) of record you would like to GET.
  # @param phoneoutboundruleactions The request data.
  # @param [Hash] opts the optional parameters
  # @return [GetPhoneOutboundRuleAction200Response]
  describe 'patch_phone_outbound_rule_action test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for remove_phone_outbound_rule_action
  # Delete object by id
  # Delete an object by id, removing it from the service.
  # @param id The ObjectId (unique 12 bytes ID) of record you would like to GET.
  # @param [Hash] opts the optional parameters
  # @return [GetPhoneOutboundRuleAction200Response]
  describe 'remove_phone_outbound_rule_action test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
