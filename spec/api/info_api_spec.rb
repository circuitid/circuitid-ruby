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

# Unit tests for CircuitID::InfoApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InfoApi' do
  before do
    # run before each test
    @api_instance = CircuitID::InfoApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InfoApi' do
    it 'should create an instance of InfoApi' do
      expect(@api_instance).to be_instance_of(CircuitID::InfoApi)
    end
  end

  # unit tests for get_info
  # Get object
  # Returns an object containing the requested information.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
