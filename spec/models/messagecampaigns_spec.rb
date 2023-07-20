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
require 'date'

# Unit tests for CircuitID::Messagecampaigns
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CircuitID::Messagecampaigns do
  let(:instance) { CircuitID::Messagecampaigns.new }

  describe 'test an instance of Messagecampaigns' do
    it 'should create an instance of Messagecampaigns' do
      expect(instance).to be_instance_of(CircuitID::Messagecampaigns)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "campaign_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "brand_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "order"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "subscriber_optin"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.subscriber_optin = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "subscriber_optout"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.subscriber_optout = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "subscriber_help"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.subscriber_help = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "number_pool"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.number_pool = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "direct_lending"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.direct_lending = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "embedded_link"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.embedded_link = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "embedded_phone"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.embedded_phone = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "affiliate_marketing"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.affiliate_marketing = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "age_gated"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Object', ["1", "0"])
      # validator.allowable_values.each do |value|
      #   expect { instance.age_gated = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "mnos"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "reference_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "use_case"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sub_use_cases"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sample1"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sample2"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sample3"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sample4"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sample5"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
