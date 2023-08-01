=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.22
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CircuitID::DeveloperappsubscriptionsCreateOrPatch
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CircuitID::DeveloperappsubscriptionsCreateOrPatch do
  let(:instance) { CircuitID::DeveloperappsubscriptionsCreateOrPatch.new }

  describe 'test an instance of DeveloperappsubscriptionsCreateOrPatch' do
    it 'should create an instance of DeveloperappsubscriptionsCreateOrPatch' do
      expect(instance).to be_instance_of(CircuitID::DeveloperappsubscriptionsCreateOrPatch)
    end
  end
  describe 'test attribute "developer_app"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "object"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "ref"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "require_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1, 0])
      # validator.allowable_values.each do |value|
      #   expect { instance.require_id = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "services"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["calendarevents", "callqueues", "cdrs", "chatmessages", "contacts", "conversationmessages", "faxes", "firewall", "users", "voicemail"])
      # validator.allowable_values.each do |value|
      #   expect { instance.services = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "events"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["create", "patch", "removed"])
      # validator.allowable_values.each do |value|
      #   expect { instance.events = value }.not_to raise_error
      # end
    end
  end

end
