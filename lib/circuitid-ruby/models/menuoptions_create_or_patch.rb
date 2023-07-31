=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.21
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitID
  class MenuoptionsCreateOrPatch
    attr_accessor :name

    attr_accessor :digit

    attr_accessor :menus

    attr_accessor :destination_type

    # ObjectId (unique 12 bytes ID)
    attr_accessor :destination

    attr_accessor :ref

    attr_accessor :call_forwarding_destination

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
        :'digit' => :'digit',
        :'menus' => :'menus',
        :'destination_type' => :'destinationType',
        :'destination' => :'destination',
        :'ref' => :'ref',
        :'call_forwarding_destination' => :'callForwardingDestination'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'digit' => :'Integer',
        :'menus' => :'Object',
        :'destination_type' => :'String',
        :'destination' => :'String',
        :'ref' => :'String',
        :'call_forwarding_destination' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'menus',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::MenuoptionsCreateOrPatch` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::MenuoptionsCreateOrPatch`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'digit')
        self.digit = attributes[:'digit']
      end

      if attributes.key?(:'menus')
        self.menus = attributes[:'menus']
      end

      if attributes.key?(:'destination_type')
        self.destination_type = attributes[:'destination_type']
      end

      if attributes.key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.key?(:'ref')
        self.ref = attributes[:'ref']
      end

      if attributes.key?(:'call_forwarding_destination')
        self.call_forwarding_destination = attributes[:'call_forwarding_destination']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 45
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 45.')
      end

      if @digit.nil?
        invalid_properties.push('invalid value for "digit", digit cannot be nil.')
      end

      if @destination_type.nil?
        invalid_properties.push('invalid value for "destination_type", destination_type cannot be nil.')
      end

      if !@ref.nil? && @ref.to_s.length > 100
        invalid_properties.push('invalid value for "ref", the character length must be smaller than or equal to 100.')
      end

      if !@ref.nil? && @ref.to_s.length < 5
        invalid_properties.push('invalid value for "ref", the character length must be great than or equal to 5.')
      end

      if !@call_forwarding_destination.nil? && @call_forwarding_destination.to_s.length > 45
        invalid_properties.push('invalid value for "call_forwarding_destination", the character length must be smaller than or equal to 45.')
      end

      if !@call_forwarding_destination.nil? && @call_forwarding_destination.to_s.length < 10
        invalid_properties.push('invalid value for "call_forwarding_destination", the character length must be great than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 45
      return false if @digit.nil?
      return false if @destination_type.nil?
      destination_type_validator = EnumAttributeValidator.new('String', ["announcements", "directories", "park", "numbers", "menus", "users", "servers", "inboundrules", "callqueues", "faxaccounts", "callforwarding", "hangup", "phoneinboundrules", "voicemailaccounts"])
      return false unless destination_type_validator.valid?(@destination_type)
      return false if !@ref.nil? && @ref.to_s.length > 100
      return false if !@ref.nil? && @ref.to_s.length < 5
      return false if !@call_forwarding_destination.nil? && @call_forwarding_destination.to_s.length > 45
      return false if !@call_forwarding_destination.nil? && @call_forwarding_destination.to_s.length < 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 45
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 45.'
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination_type Object to be assigned
    def destination_type=(destination_type)
      validator = EnumAttributeValidator.new('String', ["announcements", "directories", "park", "numbers", "menus", "users", "servers", "inboundrules", "callqueues", "faxaccounts", "callforwarding", "hangup", "phoneinboundrules", "voicemailaccounts"])
      unless validator.valid?(destination_type)
        fail ArgumentError, "invalid value for \"destination_type\", must be one of #{validator.allowable_values}."
      end
      @destination_type = destination_type
    end

    # Custom attribute writer method with validation
    # @param [Object] ref Value to be assigned
    def ref=(ref)
      if !ref.nil? && ref.to_s.length > 100
        fail ArgumentError, 'invalid value for "ref", the character length must be smaller than or equal to 100.'
      end

      if !ref.nil? && ref.to_s.length < 5
        fail ArgumentError, 'invalid value for "ref", the character length must be great than or equal to 5.'
      end

      @ref = ref
    end

    # Custom attribute writer method with validation
    # @param [Object] call_forwarding_destination Value to be assigned
    def call_forwarding_destination=(call_forwarding_destination)
      if !call_forwarding_destination.nil? && call_forwarding_destination.to_s.length > 45
        fail ArgumentError, 'invalid value for "call_forwarding_destination", the character length must be smaller than or equal to 45.'
      end

      if !call_forwarding_destination.nil? && call_forwarding_destination.to_s.length < 10
        fail ArgumentError, 'invalid value for "call_forwarding_destination", the character length must be great than or equal to 10.'
      end

      @call_forwarding_destination = call_forwarding_destination
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          digit == o.digit &&
          menus == o.menus &&
          destination_type == o.destination_type &&
          destination == o.destination &&
          ref == o.ref &&
          call_forwarding_destination == o.call_forwarding_destination
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, digit, menus, destination_type, destination, ref, call_forwarding_destination].hash
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
