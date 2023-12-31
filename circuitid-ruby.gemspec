# -*- encoding: utf-8 -*-

=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.22
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "circuitid-ruby/version"

Gem::Specification.new do |s|
  s.name        = "circuitid-ruby"
  s.version     = CircuitID::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Circuit ID, Inc."]
  s.email       = ["support@circuitid.com"]
  s.homepage    = "https://www.circuitid.com"
  s.summary     = "Circuit ID REST API Ruby Gem"
  s.description = "Circuit ID Rest API Client"
  s.license     = "https://www.circuitid.com/legal/legal-msa.htm"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
