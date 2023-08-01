=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.22
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitID
  class Faxes
    attr_accessor :attachments

    attr_accessor :caller_destinations

    attr_accessor :caller_id_number

    attr_accessor :caller_destination

    attr_accessor :pages

    attr_accessor :status_code

    attr_accessor :transfered_pages

    attr_accessor :status

    attr_accessor :error

    attr_accessor :type

    # ObjectId (unique 12 bytes ID)
    attr_accessor :order

    # ObjectId (unique 12 bytes ID)
    attr_accessor :file

    # ObjectId (unique 12 bytes ID)
    attr_accessor :contact

    # ObjectId (unique 12 bytes ID)
    attr_accessor :number

    # ObjectId (unique 12 bytes ID)
    attr_accessor :fax_account

    attr_accessor :retries

    # ObjectId (unique 12 bytes ID)
    attr_accessor :invoice

    attr_accessor :sender_email

    attr_accessor :sender_name

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
        :'attachments' => :'attachments',
        :'caller_destinations' => :'callerDestinations',
        :'caller_id_number' => :'callerIdNumber',
        :'caller_destination' => :'callerDestination',
        :'pages' => :'pages',
        :'status_code' => :'statusCode',
        :'transfered_pages' => :'transferedPages',
        :'status' => :'status',
        :'error' => :'error',
        :'type' => :'type',
        :'order' => :'order',
        :'file' => :'file',
        :'contact' => :'contact',
        :'number' => :'number',
        :'fax_account' => :'faxAccount',
        :'retries' => :'retries',
        :'invoice' => :'invoice',
        :'sender_email' => :'senderEmail',
        :'sender_name' => :'senderName'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'attachments' => :'Array<String>',
        :'caller_destinations' => :'Array<String>',
        :'caller_id_number' => :'String',
        :'caller_destination' => :'String',
        :'pages' => :'Integer',
        :'status_code' => :'Integer',
        :'transfered_pages' => :'Integer',
        :'status' => :'String',
        :'error' => :'String',
        :'type' => :'String',
        :'order' => :'String',
        :'file' => :'String',
        :'contact' => :'String',
        :'number' => :'String',
        :'fax_account' => :'String',
        :'retries' => :'Integer',
        :'invoice' => :'String',
        :'sender_email' => :'String',
        :'sender_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::Faxes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::Faxes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'caller_destinations')
        if (value = attributes[:'caller_destinations']).is_a?(Array)
          self.caller_destinations = value
        end
      end

      if attributes.key?(:'caller_id_number')
        self.caller_id_number = attributes[:'caller_id_number']
      end

      if attributes.key?(:'caller_destination')
        self.caller_destination = attributes[:'caller_destination']
      end

      if attributes.key?(:'pages')
        self.pages = attributes[:'pages']
      else
        self.pages = 0
      end

      if attributes.key?(:'status_code')
        self.status_code = attributes[:'status_code']
      end

      if attributes.key?(:'transfered_pages')
        self.transfered_pages = attributes[:'transfered_pages']
      else
        self.transfered_pages = 0
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'processing'
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'fax_account')
        self.fax_account = attributes[:'fax_account']
      end

      if attributes.key?(:'retries')
        self.retries = attributes[:'retries']
      else
        self.retries = 0
      end

      if attributes.key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.key?(:'sender_email')
        self.sender_email = attributes[:'sender_email']
      end

      if attributes.key?(:'sender_name')
        self.sender_name = attributes[:'sender_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @caller_destinations.nil?
        invalid_properties.push('invalid value for "caller_destinations", caller_destinations cannot be nil.')
      end

      if @caller_id_number.nil?
        invalid_properties.push('invalid value for "caller_id_number", caller_id_number cannot be nil.')
      end

      if @caller_id_number.to_s.length > 45
        invalid_properties.push('invalid value for "caller_id_number", the character length must be smaller than or equal to 45.')
      end

      if @caller_destination.nil?
        invalid_properties.push('invalid value for "caller_destination", caller_destination cannot be nil.')
      end

      if @caller_destination.to_s.length > 45
        invalid_properties.push('invalid value for "caller_destination", the character length must be smaller than or equal to 45.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if !@error.nil? && @error.to_s.length > 255
        invalid_properties.push('invalid value for "error", the character length must be smaller than or equal to 255.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @fax_account.nil?
        invalid_properties.push('invalid value for "fax_account", fax_account cannot be nil.')
      end

      if !@sender_email.nil? && @sender_email.to_s.length > 45
        invalid_properties.push('invalid value for "sender_email", the character length must be smaller than or equal to 45.')
      end

      if !@sender_name.nil? && @sender_name.to_s.length > 45
        invalid_properties.push('invalid value for "sender_name", the character length must be smaller than or equal to 45.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @caller_destinations.nil?
      return false if @caller_id_number.nil?
      return false if @caller_id_number.to_s.length > 45
      return false if @caller_destination.nil?
      return false if @caller_destination.to_s.length > 45
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["failed", "success", "processing"])
      return false unless status_validator.valid?(@status)
      return false if !@error.nil? && @error.to_s.length > 255
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["send", "receive"])
      return false unless type_validator.valid?(@type)
      return false if @number.nil?
      return false if @fax_account.nil?
      return false if !@sender_email.nil? && @sender_email.to_s.length > 45
      return false if !@sender_name.nil? && @sender_name.to_s.length > 45
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] caller_id_number Value to be assigned
    def caller_id_number=(caller_id_number)
      if caller_id_number.nil?
        fail ArgumentError, 'caller_id_number cannot be nil'
      end

      if caller_id_number.to_s.length > 45
        fail ArgumentError, 'invalid value for "caller_id_number", the character length must be smaller than or equal to 45.'
      end

      @caller_id_number = caller_id_number
    end

    # Custom attribute writer method with validation
    # @param [Object] caller_destination Value to be assigned
    def caller_destination=(caller_destination)
      if caller_destination.nil?
        fail ArgumentError, 'caller_destination cannot be nil'
      end

      if caller_destination.to_s.length > 45
        fail ArgumentError, 'invalid value for "caller_destination", the character length must be smaller than or equal to 45.'
      end

      @caller_destination = caller_destination
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["failed", "success", "processing"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] error Value to be assigned
    def error=(error)
      if !error.nil? && error.to_s.length > 255
        fail ArgumentError, 'invalid value for "error", the character length must be smaller than or equal to 255.'
      end

      @error = error
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["send", "receive"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_email Value to be assigned
    def sender_email=(sender_email)
      if !sender_email.nil? && sender_email.to_s.length > 45
        fail ArgumentError, 'invalid value for "sender_email", the character length must be smaller than or equal to 45.'
      end

      @sender_email = sender_email
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_name Value to be assigned
    def sender_name=(sender_name)
      if !sender_name.nil? && sender_name.to_s.length > 45
        fail ArgumentError, 'invalid value for "sender_name", the character length must be smaller than or equal to 45.'
      end

      @sender_name = sender_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          caller_destinations == o.caller_destinations &&
          caller_id_number == o.caller_id_number &&
          caller_destination == o.caller_destination &&
          pages == o.pages &&
          status_code == o.status_code &&
          transfered_pages == o.transfered_pages &&
          status == o.status &&
          error == o.error &&
          type == o.type &&
          order == o.order &&
          file == o.file &&
          contact == o.contact &&
          number == o.number &&
          fax_account == o.fax_account &&
          retries == o.retries &&
          invoice == o.invoice &&
          sender_email == o.sender_email &&
          sender_name == o.sender_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [attachments, caller_destinations, caller_id_number, caller_destination, pages, status_code, transfered_pages, status, error, type, order, file, contact, number, fax_account, retries, invoice, sender_email, sender_name].hash
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
