=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.20
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitID
  class GetNumber200Response
    attr_accessor :in_use

    attr_accessor :name

    attr_accessor :country_code

    attr_accessor :amount

    attr_accessor :per_minute_rate

    attr_accessor :fax

    attr_accessor :voice

    attr_accessor :status

    attr_accessor :sms

    attr_accessor :mms

    # ObjectId (unique 12 bytes ID)
    attr_accessor :directory_listing

    attr_accessor :caller_name

    # ObjectId (unique 12 bytes ID)
    attr_accessor :e911

    # ObjectId (unique 12 bytes ID)
    attr_accessor :message_campaign

    attr_accessor :message_class

    attr_accessor :message_type

    attr_accessor :e911_supported

    attr_accessor :caller_name_supported

    attr_accessor :directory_listing_supported

    attr_accessor :messaging_supported

    attr_accessor :destination_type

    # ObjectId (unique 12 bytes ID)
    attr_accessor :destination

    attr_accessor :ref

    attr_accessor :call_forwarding_destination

    # ObjectId (unique 12 bytes ID)
    attr_accessor :_id

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
        :'in_use' => :'inUse',
        :'name' => :'name',
        :'country_code' => :'countryCode',
        :'amount' => :'amount',
        :'per_minute_rate' => :'perMinuteRate',
        :'fax' => :'fax',
        :'voice' => :'voice',
        :'status' => :'status',
        :'sms' => :'sms',
        :'mms' => :'mms',
        :'directory_listing' => :'directoryListing',
        :'caller_name' => :'callerName',
        :'e911' => :'e911',
        :'message_campaign' => :'messageCampaign',
        :'message_class' => :'messageClass',
        :'message_type' => :'messageType',
        :'e911_supported' => :'e911Supported',
        :'caller_name_supported' => :'callerNameSupported',
        :'directory_listing_supported' => :'directoryListingSupported',
        :'messaging_supported' => :'messagingSupported',
        :'destination_type' => :'destinationType',
        :'destination' => :'destination',
        :'ref' => :'ref',
        :'call_forwarding_destination' => :'callForwardingDestination',
        :'_id' => :'_id',
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
        :'in_use' => :'Integer',
        :'name' => :'String',
        :'country_code' => :'String',
        :'amount' => :'Integer',
        :'per_minute_rate' => :'Integer',
        :'fax' => :'Integer',
        :'voice' => :'Integer',
        :'status' => :'Integer',
        :'sms' => :'Integer',
        :'mms' => :'Integer',
        :'directory_listing' => :'String',
        :'caller_name' => :'String',
        :'e911' => :'String',
        :'message_campaign' => :'String',
        :'message_class' => :'String',
        :'message_type' => :'String',
        :'e911_supported' => :'Integer',
        :'caller_name_supported' => :'Integer',
        :'directory_listing_supported' => :'Integer',
        :'messaging_supported' => :'Integer',
        :'destination_type' => :'String',
        :'destination' => :'String',
        :'ref' => :'String',
        :'call_forwarding_destination' => :'String',
        :'_id' => :'String',
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
      :'Id',
      :'Numbers',
      :'ResponseDate',
      :'ResponseUsers'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::GetNumber200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::GetNumber200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'in_use')
        self.in_use = attributes[:'in_use']
      else
        self.in_use = IN_USE::N1
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'per_minute_rate')
        self.per_minute_rate = attributes[:'per_minute_rate']
      end

      if attributes.key?(:'fax')
        self.fax = attributes[:'fax']
      else
        self.fax = FAX::N0
      end

      if attributes.key?(:'voice')
        self.voice = attributes[:'voice']
      else
        self.voice = VOICE::N0
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = STATUS::N1
      end

      if attributes.key?(:'sms')
        self.sms = attributes[:'sms']
      else
        self.sms = SMS::N0
      end

      if attributes.key?(:'mms')
        self.mms = attributes[:'mms']
      else
        self.mms = MMS::N0
      end

      if attributes.key?(:'directory_listing')
        self.directory_listing = attributes[:'directory_listing']
      end

      if attributes.key?(:'caller_name')
        self.caller_name = attributes[:'caller_name']
      end

      if attributes.key?(:'e911')
        self.e911 = attributes[:'e911']
      end

      if attributes.key?(:'message_campaign')
        self.message_campaign = attributes[:'message_campaign']
      end

      if attributes.key?(:'message_class')
        self.message_class = attributes[:'message_class']
      end

      if attributes.key?(:'message_type')
        self.message_type = attributes[:'message_type']
      end

      if attributes.key?(:'e911_supported')
        self.e911_supported = attributes[:'e911_supported']
      else
        self.e911_supported = E911_SUPPORTED::N0
      end

      if attributes.key?(:'caller_name_supported')
        self.caller_name_supported = attributes[:'caller_name_supported']
      else
        self.caller_name_supported = CALLER_NAME_SUPPORTED::N0
      end

      if attributes.key?(:'directory_listing_supported')
        self.directory_listing_supported = attributes[:'directory_listing_supported']
      else
        self.directory_listing_supported = DIRECTORY_LISTING_SUPPORTED::N0
      end

      if attributes.key?(:'messaging_supported')
        self.messaging_supported = attributes[:'messaging_supported']
      else
        self.messaging_supported = MESSAGING_SUPPORTED::N0
      end

      if attributes.key?(:'destination_type')
        self.destination_type = attributes[:'destination_type']
      else
        self.destination_type = 'park'
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

      if attributes.key?(:'_id')
        self._id = attributes[:'_id']
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

      if @name.to_s.length > 20
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 20.')
      end

      if @name.to_s.length < 10
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 10.')
      end

      if @country_code.nil?
        invalid_properties.push('invalid value for "country_code", country_code cannot be nil.')
      end

      if @country_code.to_s.length > 4
        invalid_properties.push('invalid value for "country_code", the character length must be smaller than or equal to 4.')
      end

      if @country_code.to_s.length < 1
        invalid_properties.push('invalid value for "country_code", the character length must be great than or equal to 1.')
      end

      if !@caller_name.nil? && @caller_name.to_s.length > 45
        invalid_properties.push('invalid value for "caller_name", the character length must be smaller than or equal to 45.')
      end

      if !@message_campaign.nil? && @message_campaign.to_s.length > 45
        invalid_properties.push('invalid value for "message_campaign", the character length must be smaller than or equal to 45.')
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
      in_use_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless in_use_validator.valid?(@in_use)
      return false if @name.nil?
      return false if @name.to_s.length > 20
      return false if @name.to_s.length < 10
      return false if @country_code.nil?
      return false if @country_code.to_s.length > 4
      return false if @country_code.to_s.length < 1
      fax_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless fax_validator.valid?(@fax)
      voice_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless voice_validator.valid?(@voice)
      status_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless status_validator.valid?(@status)
      sms_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless sms_validator.valid?(@sms)
      mms_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless mms_validator.valid?(@mms)
      return false if !@caller_name.nil? && @caller_name.to_s.length > 45
      return false if !@message_campaign.nil? && @message_campaign.to_s.length > 45
      message_class_validator = EnumAttributeValidator.new('String', ["P2P", "A2PLC", "A2P8XX"])
      return false unless message_class_validator.valid?(@message_class)
      message_type_validator = EnumAttributeValidator.new('String', ["SMS", "MMS", "SMSMMS", "SMS_ALT", "MMS_ALT", "SMSMMS_ALT"])
      return false unless message_type_validator.valid?(@message_type)
      e911_supported_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless e911_supported_validator.valid?(@e911_supported)
      caller_name_supported_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless caller_name_supported_validator.valid?(@caller_name_supported)
      directory_listing_supported_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless directory_listing_supported_validator.valid?(@directory_listing_supported)
      messaging_supported_validator = EnumAttributeValidator.new('Integer', [1, 0])
      return false unless messaging_supported_validator.valid?(@messaging_supported)
      return false if @destination_type.nil?
      destination_type_validator = EnumAttributeValidator.new('String', ["announcements", "directories", "park", "numbers", "menus", "users", "servers", "inboundrules", "callqueues", "faxaccounts", "callforwarding", "hangup", "phoneinboundrules", "voicemailaccounts"])
      return false unless destination_type_validator.valid?(@destination_type)
      return false if !@ref.nil? && @ref.to_s.length > 100
      return false if !@ref.nil? && @ref.to_s.length < 5
      return false if !@call_forwarding_destination.nil? && @call_forwarding_destination.to_s.length > 45
      return false if !@call_forwarding_destination.nil? && @call_forwarding_destination.to_s.length < 10
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] in_use Object to be assigned
    def in_use=(in_use)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(in_use)
        fail ArgumentError, "invalid value for \"in_use\", must be one of #{validator.allowable_values}."
      end
      @in_use = in_use
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 20
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 20.'
      end

      if name.to_s.length < 10
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 10.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)
      if country_code.nil?
        fail ArgumentError, 'country_code cannot be nil'
      end

      if country_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "country_code", the character length must be smaller than or equal to 4.'
      end

      if country_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "country_code", the character length must be great than or equal to 1.'
      end

      @country_code = country_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fax Object to be assigned
    def fax=(fax)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(fax)
        fail ArgumentError, "invalid value for \"fax\", must be one of #{validator.allowable_values}."
      end
      @fax = fax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice Object to be assigned
    def voice=(voice)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(voice)
        fail ArgumentError, "invalid value for \"voice\", must be one of #{validator.allowable_values}."
      end
      @voice = voice
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms Object to be assigned
    def sms=(sms)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(sms)
        fail ArgumentError, "invalid value for \"sms\", must be one of #{validator.allowable_values}."
      end
      @sms = sms
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mms Object to be assigned
    def mms=(mms)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(mms)
        fail ArgumentError, "invalid value for \"mms\", must be one of #{validator.allowable_values}."
      end
      @mms = mms
    end

    # Custom attribute writer method with validation
    # @param [Object] caller_name Value to be assigned
    def caller_name=(caller_name)
      if !caller_name.nil? && caller_name.to_s.length > 45
        fail ArgumentError, 'invalid value for "caller_name", the character length must be smaller than or equal to 45.'
      end

      @caller_name = caller_name
    end

    # Custom attribute writer method with validation
    # @param [Object] message_campaign Value to be assigned
    def message_campaign=(message_campaign)
      if !message_campaign.nil? && message_campaign.to_s.length > 45
        fail ArgumentError, 'invalid value for "message_campaign", the character length must be smaller than or equal to 45.'
      end

      @message_campaign = message_campaign
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_class Object to be assigned
    def message_class=(message_class)
      validator = EnumAttributeValidator.new('String', ["P2P", "A2PLC", "A2P8XX"])
      unless validator.valid?(message_class)
        fail ArgumentError, "invalid value for \"message_class\", must be one of #{validator.allowable_values}."
      end
      @message_class = message_class
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_type Object to be assigned
    def message_type=(message_type)
      validator = EnumAttributeValidator.new('String', ["SMS", "MMS", "SMSMMS", "SMS_ALT", "MMS_ALT", "SMSMMS_ALT"])
      unless validator.valid?(message_type)
        fail ArgumentError, "invalid value for \"message_type\", must be one of #{validator.allowable_values}."
      end
      @message_type = message_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] e911_supported Object to be assigned
    def e911_supported=(e911_supported)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(e911_supported)
        fail ArgumentError, "invalid value for \"e911_supported\", must be one of #{validator.allowable_values}."
      end
      @e911_supported = e911_supported
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] caller_name_supported Object to be assigned
    def caller_name_supported=(caller_name_supported)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(caller_name_supported)
        fail ArgumentError, "invalid value for \"caller_name_supported\", must be one of #{validator.allowable_values}."
      end
      @caller_name_supported = caller_name_supported
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] directory_listing_supported Object to be assigned
    def directory_listing_supported=(directory_listing_supported)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(directory_listing_supported)
        fail ArgumentError, "invalid value for \"directory_listing_supported\", must be one of #{validator.allowable_values}."
      end
      @directory_listing_supported = directory_listing_supported
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] messaging_supported Object to be assigned
    def messaging_supported=(messaging_supported)
      validator = EnumAttributeValidator.new('Integer', [1, 0])
      unless validator.valid?(messaging_supported)
        fail ArgumentError, "invalid value for \"messaging_supported\", must be one of #{validator.allowable_values}."
      end
      @messaging_supported = messaging_supported
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
          in_use == o.in_use &&
          name == o.name &&
          country_code == o.country_code &&
          amount == o.amount &&
          per_minute_rate == o.per_minute_rate &&
          fax == o.fax &&
          voice == o.voice &&
          status == o.status &&
          sms == o.sms &&
          mms == o.mms &&
          directory_listing == o.directory_listing &&
          caller_name == o.caller_name &&
          e911 == o.e911 &&
          message_campaign == o.message_campaign &&
          message_class == o.message_class &&
          message_type == o.message_type &&
          e911_supported == o.e911_supported &&
          caller_name_supported == o.caller_name_supported &&
          directory_listing_supported == o.directory_listing_supported &&
          messaging_supported == o.messaging_supported &&
          destination_type == o.destination_type &&
          destination == o.destination &&
          ref == o.ref &&
          call_forwarding_destination == o.call_forwarding_destination &&
          _id == o._id &&
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
      [in_use, name, country_code, amount, per_minute_rate, fax, voice, status, sms, mms, directory_listing, caller_name, e911, message_campaign, message_class, message_type, e911_supported, caller_name_supported, directory_listing_supported, messaging_supported, destination_type, destination, ref, call_forwarding_destination, _id, created_by_user_id, updated_by_user_id, created_at, updated_at].hash
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
