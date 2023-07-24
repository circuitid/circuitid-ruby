=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.15
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CircuitID::DNSRecordsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DNSRecordsApi' do
  before do
    # run before each test
    @api_instance = CircuitID::DNSRecordsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DNSRecordsApi' do
    it 'should create an instance of DNSRecordsApi' do
      expect(@api_instance).to be_instance_of(CircuitID::DNSRecordsApi)
    end
  end

  # unit tests for find_dns_records
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
  # @return [Object]
  describe 'find_dns_records test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
