=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.15
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitID
  class Developerapps
    attr_accessor :name

    attr_accessor :description

    attr_accessor :type

    attr_accessor :visibility

    attr_accessor :require_id

    attr_accessor :is_free

    attr_accessor :fee_description

    attr_accessor :integration_type

    attr_accessor :services

    attr_accessor :events

    # ObjectId (unique 12 bytes ID)
    attr_accessor :user

    attr_accessor :webhook_url

    attr_accessor :terms_of_service_url

    attr_accessor :privacy_policy_url

    attr_accessor :permissions

    attr_accessor :status

    attr_accessor :webhook_auth_type

    attr_accessor :webhook_username

    attr_accessor :webhook_password

    attr_accessor :webhook_token_name

    attr_accessor :webhook_token

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'type' => :'type',
        :'visibility' => :'visibility',
        :'require_id' => :'requireId',
        :'is_free' => :'isFree',
        :'fee_description' => :'feeDescription',
        :'integration_type' => :'integrationType',
        :'services' => :'services',
        :'events' => :'events',
        :'user' => :'user',
        :'webhook_url' => :'webhookUrl',
        :'terms_of_service_url' => :'termsOfServiceUrl',
        :'privacy_policy_url' => :'privacyPolicyUrl',
        :'permissions' => :'permissions',
        :'status' => :'status',
        :'webhook_auth_type' => :'webhookAuthType',
        :'webhook_username' => :'webhookUsername',
        :'webhook_password' => :'webhookPassword',
        :'webhook_token_name' => :'webhookTokenName',
        :'webhook_token' => :'webhookToken'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'Object',
        :'description' => :'Object',
        :'type' => :'Object',
        :'visibility' => :'Object',
        :'require_id' => :'Object',
        :'is_free' => :'Object',
        :'fee_description' => :'Object',
        :'integration_type' => :'Object',
        :'services' => :'Object',
        :'events' => :'Object',
        :'user' => :'Object',
        :'webhook_url' => :'Object',
        :'terms_of_service_url' => :'Object',
        :'privacy_policy_url' => :'Object',
        :'permissions' => :'Object',
        :'status' => :'Object',
        :'webhook_auth_type' => :'Object',
        :'webhook_username' => :'Object',
        :'webhook_password' => :'Object',
        :'webhook_token_name' => :'Object',
        :'webhook_token' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'description',
        :'type',
        :'visibility',
        :'require_id',
        :'is_free',
        :'fee_description',
        :'integration_type',
        :'services',
        :'events',
        :'user',
        :'webhook_url',
        :'terms_of_service_url',
        :'privacy_policy_url',
        :'permissions',
        :'status',
        :'webhook_auth_type',
        :'webhook_username',
        :'webhook_password',
        :'webhook_token_name',
        :'webhook_token'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::Developerapps` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::Developerapps`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'visibility')
        self.visibility = attributes[:'visibility']
      end

      if attributes.key?(:'require_id')
        self.require_id = attributes[:'require_id']
      end

      if attributes.key?(:'is_free')
        self.is_free = attributes[:'is_free']
      end

      if attributes.key?(:'fee_description')
        self.fee_description = attributes[:'fee_description']
      end

      if attributes.key?(:'integration_type')
        self.integration_type = attributes[:'integration_type']
      end

      if attributes.key?(:'services')
        self.services = attributes[:'services']
      end

      if attributes.key?(:'events')
        self.events = attributes[:'events']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'webhook_url')
        self.webhook_url = attributes[:'webhook_url']
      end

      if attributes.key?(:'terms_of_service_url')
        self.terms_of_service_url = attributes[:'terms_of_service_url']
      end

      if attributes.key?(:'privacy_policy_url')
        self.privacy_policy_url = attributes[:'privacy_policy_url']
      end

      if attributes.key?(:'permissions')
        self.permissions = attributes[:'permissions']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'webhook_auth_type')
        self.webhook_auth_type = attributes[:'webhook_auth_type']
      end

      if attributes.key?(:'webhook_username')
        self.webhook_username = attributes[:'webhook_username']
      end

      if attributes.key?(:'webhook_password')
        self.webhook_password = attributes[:'webhook_password']
      end

      if attributes.key?(:'webhook_token_name')
        self.webhook_token_name = attributes[:'webhook_token_name']
      end

      if attributes.key?(:'webhook_token')
        self.webhook_token = attributes[:'webhook_token']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.to_s.length > 45
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 45.')
      end

      if !@description.nil? && @description.to_s.length > 4096
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 4096.')
      end

      if !@fee_description.nil? && @fee_description.to_s.length > 4096
        invalid_properties.push('invalid value for "fee_description", the character length must be smaller than or equal to 4096.')
      end

      if !@webhook_url.nil? && @webhook_url.to_s.length > 1024
        invalid_properties.push('invalid value for "webhook_url", the character length must be smaller than or equal to 1024.')
      end

      if !@terms_of_service_url.nil? && @terms_of_service_url.to_s.length > 1024
        invalid_properties.push('invalid value for "terms_of_service_url", the character length must be smaller than or equal to 1024.')
      end

      if !@privacy_policy_url.nil? && @privacy_policy_url.to_s.length > 1024
        invalid_properties.push('invalid value for "privacy_policy_url", the character length must be smaller than or equal to 1024.')
      end

      if !@webhook_username.nil? && @webhook_username.to_s.length > 255
        invalid_properties.push('invalid value for "webhook_username", the character length must be smaller than or equal to 255.')
      end

      if !@webhook_password.nil? && @webhook_password.to_s.length > 255
        invalid_properties.push('invalid value for "webhook_password", the character length must be smaller than or equal to 255.')
      end

      if !@webhook_token_name.nil? && @webhook_token_name.to_s.length > 255
        invalid_properties.push('invalid value for "webhook_token_name", the character length must be smaller than or equal to 255.')
      end

      if !@webhook_token.nil? && @webhook_token.to_s.length > 255
        invalid_properties.push('invalid value for "webhook_token", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.length > 45
      return false if !@description.nil? && @description.to_s.length > 4096
      type_validator = EnumAttributeValidator.new('Object', ["events"])
      return false unless type_validator.valid?(@type)
      visibility_validator = EnumAttributeValidator.new('Object', ["private", "public"])
      return false unless visibility_validator.valid?(@visibility)
      require_id_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless require_id_validator.valid?(@require_id)
      is_free_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless is_free_validator.valid?(@is_free)
      return false if !@fee_description.nil? && @fee_description.to_s.length > 4096
      integration_type_validator = EnumAttributeValidator.new('Object', ["webhook", "client"])
      return false unless integration_type_validator.valid?(@integration_type)
      return false if !@webhook_url.nil? && @webhook_url.to_s.length > 1024
      return false if !@terms_of_service_url.nil? && @terms_of_service_url.to_s.length > 1024
      return false if !@privacy_policy_url.nil? && @privacy_policy_url.to_s.length > 1024
      status_validator = EnumAttributeValidator.new('Object', ["active", "disabled", "suspended", "error", "pending"])
      return false unless status_validator.valid?(@status)
      webhook_auth_type_validator = EnumAttributeValidator.new('Object', ["header", "usernameAndPassword"])
      return false unless webhook_auth_type_validator.valid?(@webhook_auth_type)
      return false if !@webhook_username.nil? && @webhook_username.to_s.length > 255
      return false if !@webhook_password.nil? && @webhook_password.to_s.length > 255
      return false if !@webhook_token_name.nil? && @webhook_token_name.to_s.length > 255
      return false if !@webhook_token.nil? && @webhook_token.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.length > 45
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 45.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 4096
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 4096.'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', ["events"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visibility Object to be assigned
    def visibility=(visibility)
      validator = EnumAttributeValidator.new('Object', ["private", "public"])
      unless validator.valid?(visibility)
        fail ArgumentError, "invalid value for \"visibility\", must be one of #{validator.allowable_values}."
      end
      @visibility = visibility
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_id Object to be assigned
    def require_id=(require_id)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(require_id)
        fail ArgumentError, "invalid value for \"require_id\", must be one of #{validator.allowable_values}."
      end
      @require_id = require_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_free Object to be assigned
    def is_free=(is_free)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(is_free)
        fail ArgumentError, "invalid value for \"is_free\", must be one of #{validator.allowable_values}."
      end
      @is_free = is_free
    end

    # Custom attribute writer method with validation
    # @param [Object] fee_description Value to be assigned
    def fee_description=(fee_description)
      if !fee_description.nil? && fee_description.to_s.length > 4096
        fail ArgumentError, 'invalid value for "fee_description", the character length must be smaller than or equal to 4096.'
      end

      @fee_description = fee_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integration_type Object to be assigned
    def integration_type=(integration_type)
      validator = EnumAttributeValidator.new('Object', ["webhook", "client"])
      unless validator.valid?(integration_type)
        fail ArgumentError, "invalid value for \"integration_type\", must be one of #{validator.allowable_values}."
      end
      @integration_type = integration_type
    end

    # Custom attribute writer method with validation
    # @param [Object] webhook_url Value to be assigned
    def webhook_url=(webhook_url)
      if !webhook_url.nil? && webhook_url.to_s.length > 1024
        fail ArgumentError, 'invalid value for "webhook_url", the character length must be smaller than or equal to 1024.'
      end

      @webhook_url = webhook_url
    end

    # Custom attribute writer method with validation
    # @param [Object] terms_of_service_url Value to be assigned
    def terms_of_service_url=(terms_of_service_url)
      if !terms_of_service_url.nil? && terms_of_service_url.to_s.length > 1024
        fail ArgumentError, 'invalid value for "terms_of_service_url", the character length must be smaller than or equal to 1024.'
      end

      @terms_of_service_url = terms_of_service_url
    end

    # Custom attribute writer method with validation
    # @param [Object] privacy_policy_url Value to be assigned
    def privacy_policy_url=(privacy_policy_url)
      if !privacy_policy_url.nil? && privacy_policy_url.to_s.length > 1024
        fail ArgumentError, 'invalid value for "privacy_policy_url", the character length must be smaller than or equal to 1024.'
      end

      @privacy_policy_url = privacy_policy_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', ["active", "disabled", "suspended", "error", "pending"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_auth_type Object to be assigned
    def webhook_auth_type=(webhook_auth_type)
      validator = EnumAttributeValidator.new('Object', ["header", "usernameAndPassword"])
      unless validator.valid?(webhook_auth_type)
        fail ArgumentError, "invalid value for \"webhook_auth_type\", must be one of #{validator.allowable_values}."
      end
      @webhook_auth_type = webhook_auth_type
    end

    # Custom attribute writer method with validation
    # @param [Object] webhook_username Value to be assigned
    def webhook_username=(webhook_username)
      if !webhook_username.nil? && webhook_username.to_s.length > 255
        fail ArgumentError, 'invalid value for "webhook_username", the character length must be smaller than or equal to 255.'
      end

      @webhook_username = webhook_username
    end

    # Custom attribute writer method with validation
    # @param [Object] webhook_password Value to be assigned
    def webhook_password=(webhook_password)
      if !webhook_password.nil? && webhook_password.to_s.length > 255
        fail ArgumentError, 'invalid value for "webhook_password", the character length must be smaller than or equal to 255.'
      end

      @webhook_password = webhook_password
    end

    # Custom attribute writer method with validation
    # @param [Object] webhook_token_name Value to be assigned
    def webhook_token_name=(webhook_token_name)
      if !webhook_token_name.nil? && webhook_token_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "webhook_token_name", the character length must be smaller than or equal to 255.'
      end

      @webhook_token_name = webhook_token_name
    end

    # Custom attribute writer method with validation
    # @param [Object] webhook_token Value to be assigned
    def webhook_token=(webhook_token)
      if !webhook_token.nil? && webhook_token.to_s.length > 255
        fail ArgumentError, 'invalid value for "webhook_token", the character length must be smaller than or equal to 255.'
      end

      @webhook_token = webhook_token
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          type == o.type &&
          visibility == o.visibility &&
          require_id == o.require_id &&
          is_free == o.is_free &&
          fee_description == o.fee_description &&
          integration_type == o.integration_type &&
          services == o.services &&
          events == o.events &&
          user == o.user &&
          webhook_url == o.webhook_url &&
          terms_of_service_url == o.terms_of_service_url &&
          privacy_policy_url == o.privacy_policy_url &&
          permissions == o.permissions &&
          status == o.status &&
          webhook_auth_type == o.webhook_auth_type &&
          webhook_username == o.webhook_username &&
          webhook_password == o.webhook_password &&
          webhook_token_name == o.webhook_token_name &&
          webhook_token == o.webhook_token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, type, visibility, require_id, is_free, fee_description, integration_type, services, events, user, webhook_url, terms_of_service_url, privacy_policy_url, permissions, status, webhook_auth_type, webhook_username, webhook_password, webhook_token_name, webhook_token].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CircuitID.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
