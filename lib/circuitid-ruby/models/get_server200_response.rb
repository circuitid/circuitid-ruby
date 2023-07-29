=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.19
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitID
  class GetServer200Response
    attr_accessor :name

    attr_accessor :host

    attr_accessor :port

    attr_accessor :caller_id

    attr_accessor :type

    attr_accessor :domestic_outbound_call_limit

    attr_accessor :domestic_inbound_call_limit

    attr_accessor :international_outbound_call_limit

    attr_accessor :toll_free_channel_limit

    # ObjectId (unique 12 bytes ID)
    attr_accessor :inbound_sip_trunking_order

    # ObjectId (unique 12 bytes ID)
    attr_accessor :outbound_sip_trunking_order

    attr_accessor :no_instant_ring_back

    attr_accessor :bypass_media

    attr_accessor :disable_rtp_auto_adjust

    # ObjectId (unique 12 bytes ID)
    attr_accessor :created_by_user_id

    # ObjectId (unique 12 bytes ID)
    attr_accessor :updated_by_user_id

    attr_accessor :created_at

    attr_accessor :updated_at

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
        :'host' => :'host',
        :'port' => :'port',
        :'caller_id' => :'callerId',
        :'type' => :'type',
        :'domestic_outbound_call_limit' => :'domesticOutboundCallLimit',
        :'domestic_inbound_call_limit' => :'domesticInboundCallLimit',
        :'international_outbound_call_limit' => :'internationalOutboundCallLimit',
        :'toll_free_channel_limit' => :'tollFreeChannelLimit',
        :'inbound_sip_trunking_order' => :'inboundSipTrunkingOrder',
        :'outbound_sip_trunking_order' => :'outboundSipTrunkingOrder',
        :'no_instant_ring_back' => :'noInstantRingBack',
        :'bypass_media' => :'bypassMedia',
        :'disable_rtp_auto_adjust' => :'disableRTPAutoAdjust',
        :'created_by_user_id' => :'createdByUserId',
        :'updated_by_user_id' => :'updatedByUserId',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt'
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
        :'host' => :'String',
        :'port' => :'Integer',
        :'caller_id' => :'String',
        :'type' => :'String',
        :'domestic_outbound_call_limit' => :'Integer',
        :'domestic_inbound_call_limit' => :'Integer',
        :'international_outbound_call_limit' => :'Integer',
        :'toll_free_channel_limit' => :'Integer',
        :'inbound_sip_trunking_order' => :'String',
        :'outbound_sip_trunking_order' => :'String',
        :'no_instant_ring_back' => :'Integer',
        :'bypass_media' => :'Integer',
        :'disable_rtp_auto_adjust' => :'Integer',
        :'created_by_user_id' => :'String',
        :'updated_by_user_id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ResponseDate',
      :'ResponseUsers',
      :'Servers'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::GetServer200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::GetServer200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      else
        self.port = 5060
      end

      if attributes.key?(:'caller_id')
        self.caller_id = attributes[:'caller_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'domestic_outbound_call_limit')
        self.domestic_outbound_call_limit = attributes[:'domestic_outbound_call_limit']
      else
        self.domestic_outbound_call_limit = 10
      end

      if attributes.key?(:'domestic_inbound_call_limit')
        self.domestic_inbound_call_limit = attributes[:'domestic_inbound_call_limit']
      else
        self.domestic_inbound_call_limit = 10
      end

      if attributes.key?(:'international_outbound_call_limit')
        self.international_outbound_call_limit = attributes[:'international_outbound_call_limit']
      else
        self.international_outbound_call_limit = 10
      end

      if attributes.key?(:'toll_free_channel_limit')
        self.toll_free_channel_limit = attributes[:'toll_free_channel_limit']
      else
        self.toll_free_channel_limit = 10
      end

      if attributes.key?(:'inbound_sip_trunking_order')
        self.inbound_sip_trunking_order = attributes[:'inbound_sip_trunking_order']
      end

      if attributes.key?(:'outbound_sip_trunking_order')
        self.outbound_sip_trunking_order = attributes[:'outbound_sip_trunking_order']
      end

      if attributes.key?(:'no_instant_ring_back')
        self.no_instant_ring_back = attributes[:'no_instant_ring_back']
      end

      if attributes.key?(:'bypass_media')
        self.bypass_media = attributes[:'bypass_media']
      else
        self.bypass_media = BYPASS_MEDIA::N0
      end

      if attributes.key?(:'disable_rtp_auto_adjust')
        self.disable_rtp_auto_adjust = attributes[:'disable_rtp_auto_adjust']
      else
        self.disable_rtp_auto_adjust = DISABLE_RTP_AUTO_ADJUST::N0
      end

      if attributes.key?(:'created_by_user_id')
        self.created_by_user_id = attributes[:'created_by_user_id']
      end

      if attributes.key?(:'updated_by_user_id')
        self.updated_by_user_id = attributes[:'updated_by_user_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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

      if @host.nil?
        invalid_properties.push('invalid value for "host", host cannot be nil.')
      end

      if @host.to_s.length > 45
        invalid_properties.push('invalid value for "host", the character length must be smaller than or equal to 45.')
      end

      if @host.to_s.length < 5
        invalid_properties.push('invalid value for "host", the character length must be great than or equal to 5.')
      end

      if @port.nil?
        invalid_properties.push('invalid value for "port", port cannot be nil.')
      end

      if !@caller_id.nil? && @caller_id.to_s.length > 45
        invalid_properties.push('invalid value for "caller_id", the character length must be smaller than or equal to 45.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @domestic_outbound_call_limit.nil?
        invalid_properties.push('invalid value for "domestic_outbound_call_limit", domestic_outbound_call_limit cannot be nil.')
      end

      if @domestic_inbound_call_limit.nil?
        invalid_properties.push('invalid value for "domestic_inbound_call_limit", domestic_inbound_call_limit cannot be nil.')
      end

      if @international_outbound_call_limit.nil?
        invalid_properties.push('invalid value for "international_outbound_call_limit", international_outbound_call_limit cannot be nil.')
      end

      if @toll_free_channel_limit.nil?
        invalid_properties.push('invalid value for "toll_free_channel_limit", toll_free_channel_limit cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 45
      return false if @host.nil?
      return false if @host.to_s.length > 45
      return false if @host.to_s.length < 5
      return false if @port.nil?
      return false if !@caller_id.nil? && @caller_id.to_s.length > 45
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["sip", "skype"])
      return false unless type_validator.valid?(@type)
      return false if @domestic_outbound_call_limit.nil?
      return false if @domestic_inbound_call_limit.nil?
      return false if @international_outbound_call_limit.nil?
      return false if @toll_free_channel_limit.nil?
      no_instant_ring_back_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless no_instant_ring_back_validator.valid?(@no_instant_ring_back)
      bypass_media_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless bypass_media_validator.valid?(@bypass_media)
      disable_rtp_auto_adjust_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless disable_rtp_auto_adjust_validator.valid?(@disable_rtp_auto_adjust)
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

    # Custom attribute writer method with validation
    # @param [Object] host Value to be assigned
    def host=(host)
      if host.nil?
        fail ArgumentError, 'host cannot be nil'
      end

      if host.to_s.length > 45
        fail ArgumentError, 'invalid value for "host", the character length must be smaller than or equal to 45.'
      end

      if host.to_s.length < 5
        fail ArgumentError, 'invalid value for "host", the character length must be great than or equal to 5.'
      end

      @host = host
    end

    # Custom attribute writer method with validation
    # @param [Object] caller_id Value to be assigned
    def caller_id=(caller_id)
      if !caller_id.nil? && caller_id.to_s.length > 45
        fail ArgumentError, 'invalid value for "caller_id", the character length must be smaller than or equal to 45.'
      end

      @caller_id = caller_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["sip", "skype"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] no_instant_ring_back Object to be assigned
    def no_instant_ring_back=(no_instant_ring_back)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(no_instant_ring_back)
        fail ArgumentError, "invalid value for \"no_instant_ring_back\", must be one of #{validator.allowable_values}."
      end
      @no_instant_ring_back = no_instant_ring_back
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bypass_media Object to be assigned
    def bypass_media=(bypass_media)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(bypass_media)
        fail ArgumentError, "invalid value for \"bypass_media\", must be one of #{validator.allowable_values}."
      end
      @bypass_media = bypass_media
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disable_rtp_auto_adjust Object to be assigned
    def disable_rtp_auto_adjust=(disable_rtp_auto_adjust)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(disable_rtp_auto_adjust)
        fail ArgumentError, "invalid value for \"disable_rtp_auto_adjust\", must be one of #{validator.allowable_values}."
      end
      @disable_rtp_auto_adjust = disable_rtp_auto_adjust
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          host == o.host &&
          port == o.port &&
          caller_id == o.caller_id &&
          type == o.type &&
          domestic_outbound_call_limit == o.domestic_outbound_call_limit &&
          domestic_inbound_call_limit == o.domestic_inbound_call_limit &&
          international_outbound_call_limit == o.international_outbound_call_limit &&
          toll_free_channel_limit == o.toll_free_channel_limit &&
          inbound_sip_trunking_order == o.inbound_sip_trunking_order &&
          outbound_sip_trunking_order == o.outbound_sip_trunking_order &&
          no_instant_ring_back == o.no_instant_ring_back &&
          bypass_media == o.bypass_media &&
          disable_rtp_auto_adjust == o.disable_rtp_auto_adjust &&
          created_by_user_id == o.created_by_user_id &&
          updated_by_user_id == o.updated_by_user_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, host, port, caller_id, type, domestic_outbound_call_limit, domestic_inbound_call_limit, international_outbound_call_limit, toll_free_channel_limit, inbound_sip_trunking_order, outbound_sip_trunking_order, no_instant_ring_back, bypass_media, disable_rtp_auto_adjust, created_by_user_id, updated_by_user_id, created_at, updated_at].hash
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
