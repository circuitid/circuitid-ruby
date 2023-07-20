=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.8
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitIDAPIClient
  class Customers
    attr_accessor :name

    attr_accessor :status

    attr_accessor :website_url

    attr_accessor :logo

    attr_accessor :credit

    # ObjectId (unique 12 bytes ID)
    attr_accessor :admin_user_id

    # ObjectId (unique 12 bytes ID)
    attr_accessor :billing_user_id

    # ObjectId (unique 12 bytes ID)
    attr_accessor :call_recording_user_id

    attr_accessor :call_forwarding_call_limit

    # ObjectId (unique 12 bytes ID)
    attr_accessor :support_user_id

    attr_accessor :automatic_refill_amount

    attr_accessor :low_balance_alert_amount

    attr_accessor :low_balance_alert_at

    attr_accessor :low_balance_alert_count

    # ObjectId (unique 12 bytes ID)
    attr_accessor :last_automatic_refill_invoice

    attr_accessor :international_calling

    attr_accessor :created_by_ip

    attr_accessor :call_debug

    attr_accessor :media_bypass

    attr_accessor :account_lock

    attr_accessor :call_recording

    attr_accessor :cdr_retention

    attr_accessor :cnam_look_ups

    attr_accessor :hold_music

    attr_accessor :transcribe_calls

    attr_accessor :max_outbound_call_rate

    attr_accessor :default_bill_method

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
        :'status' => :'status',
        :'website_url' => :'websiteUrl',
        :'logo' => :'logo',
        :'credit' => :'credit',
        :'admin_user_id' => :'adminUserId',
        :'billing_user_id' => :'billingUserId',
        :'call_recording_user_id' => :'callRecordingUserId',
        :'call_forwarding_call_limit' => :'callForwardingCallLimit',
        :'support_user_id' => :'supportUserId',
        :'automatic_refill_amount' => :'automaticRefillAmount',
        :'low_balance_alert_amount' => :'lowBalanceAlertAmount',
        :'low_balance_alert_at' => :'lowBalanceAlertAt',
        :'low_balance_alert_count' => :'lowBalanceAlertCount',
        :'last_automatic_refill_invoice' => :'lastAutomaticRefillInvoice',
        :'international_calling' => :'internationalCalling',
        :'created_by_ip' => :'createdByIP',
        :'call_debug' => :'callDebug',
        :'media_bypass' => :'mediaBypass',
        :'account_lock' => :'accountLock',
        :'call_recording' => :'callRecording',
        :'cdr_retention' => :'cdrRetention',
        :'cnam_look_ups' => :'cnamLookUps',
        :'hold_music' => :'holdMusic',
        :'transcribe_calls' => :'transcribeCalls',
        :'max_outbound_call_rate' => :'maxOutboundCallRate',
        :'default_bill_method' => :'defaultBillMethod'
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
        :'status' => :'Object',
        :'website_url' => :'Object',
        :'logo' => :'Object',
        :'credit' => :'Object',
        :'admin_user_id' => :'Object',
        :'billing_user_id' => :'Object',
        :'call_recording_user_id' => :'Object',
        :'call_forwarding_call_limit' => :'Object',
        :'support_user_id' => :'Object',
        :'automatic_refill_amount' => :'Object',
        :'low_balance_alert_amount' => :'Object',
        :'low_balance_alert_at' => :'Object',
        :'low_balance_alert_count' => :'Object',
        :'last_automatic_refill_invoice' => :'Object',
        :'international_calling' => :'Object',
        :'created_by_ip' => :'Object',
        :'call_debug' => :'Object',
        :'media_bypass' => :'Object',
        :'account_lock' => :'Object',
        :'call_recording' => :'Object',
        :'cdr_retention' => :'Object',
        :'cnam_look_ups' => :'Object',
        :'hold_music' => :'Object',
        :'transcribe_calls' => :'Object',
        :'max_outbound_call_rate' => :'Object',
        :'default_bill_method' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'status',
        :'website_url',
        :'logo',
        :'credit',
        :'admin_user_id',
        :'billing_user_id',
        :'call_recording_user_id',
        :'call_forwarding_call_limit',
        :'support_user_id',
        :'automatic_refill_amount',
        :'low_balance_alert_amount',
        :'low_balance_alert_at',
        :'low_balance_alert_count',
        :'last_automatic_refill_invoice',
        :'international_calling',
        :'created_by_ip',
        :'call_debug',
        :'media_bypass',
        :'account_lock',
        :'call_recording',
        :'cdr_retention',
        :'cnam_look_ups',
        :'hold_music',
        :'transcribe_calls',
        :'max_outbound_call_rate',
        :'default_bill_method'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitIDAPIClient::Customers` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitIDAPIClient::Customers`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'website_url')
        self.website_url = attributes[:'website_url']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'credit')
        self.credit = attributes[:'credit']
      end

      if attributes.key?(:'admin_user_id')
        self.admin_user_id = attributes[:'admin_user_id']
      end

      if attributes.key?(:'billing_user_id')
        self.billing_user_id = attributes[:'billing_user_id']
      end

      if attributes.key?(:'call_recording_user_id')
        self.call_recording_user_id = attributes[:'call_recording_user_id']
      end

      if attributes.key?(:'call_forwarding_call_limit')
        self.call_forwarding_call_limit = attributes[:'call_forwarding_call_limit']
      end

      if attributes.key?(:'support_user_id')
        self.support_user_id = attributes[:'support_user_id']
      end

      if attributes.key?(:'automatic_refill_amount')
        self.automatic_refill_amount = attributes[:'automatic_refill_amount']
      end

      if attributes.key?(:'low_balance_alert_amount')
        self.low_balance_alert_amount = attributes[:'low_balance_alert_amount']
      end

      if attributes.key?(:'low_balance_alert_at')
        self.low_balance_alert_at = attributes[:'low_balance_alert_at']
      end

      if attributes.key?(:'low_balance_alert_count')
        self.low_balance_alert_count = attributes[:'low_balance_alert_count']
      end

      if attributes.key?(:'last_automatic_refill_invoice')
        self.last_automatic_refill_invoice = attributes[:'last_automatic_refill_invoice']
      end

      if attributes.key?(:'international_calling')
        self.international_calling = attributes[:'international_calling']
      end

      if attributes.key?(:'created_by_ip')
        self.created_by_ip = attributes[:'created_by_ip']
      end

      if attributes.key?(:'call_debug')
        self.call_debug = attributes[:'call_debug']
      end

      if attributes.key?(:'media_bypass')
        self.media_bypass = attributes[:'media_bypass']
      end

      if attributes.key?(:'account_lock')
        self.account_lock = attributes[:'account_lock']
      end

      if attributes.key?(:'call_recording')
        self.call_recording = attributes[:'call_recording']
      end

      if attributes.key?(:'cdr_retention')
        self.cdr_retention = attributes[:'cdr_retention']
      end

      if attributes.key?(:'cnam_look_ups')
        self.cnam_look_ups = attributes[:'cnam_look_ups']
      end

      if attributes.key?(:'hold_music')
        self.hold_music = attributes[:'hold_music']
      end

      if attributes.key?(:'transcribe_calls')
        self.transcribe_calls = attributes[:'transcribe_calls']
      end

      if attributes.key?(:'max_outbound_call_rate')
        self.max_outbound_call_rate = attributes[:'max_outbound_call_rate']
      end

      if attributes.key?(:'default_bill_method')
        self.default_bill_method = attributes[:'default_bill_method']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.to_s.length > 45
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 45.')
      end

      if !@website_url.nil? && @website_url.to_s.length > 255
        invalid_properties.push('invalid value for "website_url", the character length must be smaller than or equal to 255.')
      end

      if !@logo.nil? && @logo.to_s.length > 255
        invalid_properties.push('invalid value for "logo", the character length must be smaller than or equal to 255.')
      end

      if !@created_by_ip.nil? && @created_by_ip.to_s.length > 45
        invalid_properties.push('invalid value for "created_by_ip", the character length must be smaller than or equal to 45.')
      end

      if !@created_by_ip.nil? && @created_by_ip.to_s.length < 8
        invalid_properties.push('invalid value for "created_by_ip", the character length must be great than or equal to 8.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.length > 45
      status_validator = EnumAttributeValidator.new('Object', ["active", "suspended", "terminated", "fraud"])
      return false unless status_validator.valid?(@status)
      return false if !@website_url.nil? && @website_url.to_s.length > 255
      return false if !@logo.nil? && @logo.to_s.length > 255
      international_calling_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless international_calling_validator.valid?(@international_calling)
      return false if !@created_by_ip.nil? && @created_by_ip.to_s.length > 45
      return false if !@created_by_ip.nil? && @created_by_ip.to_s.length < 8
      call_debug_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless call_debug_validator.valid?(@call_debug)
      media_bypass_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless media_bypass_validator.valid?(@media_bypass)
      account_lock_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless account_lock_validator.valid?(@account_lock)
      call_recording_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless call_recording_validator.valid?(@call_recording)
      cnam_look_ups_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless cnam_look_ups_validator.valid?(@cnam_look_ups)
      hold_music_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless hold_music_validator.valid?(@hold_music)
      transcribe_calls_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless transcribe_calls_validator.valid?(@transcribe_calls)
      default_bill_method_validator = EnumAttributeValidator.new('Object', ["credit", "paymentmethod"])
      return false unless default_bill_method_validator.valid?(@default_bill_method)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', ["active", "suspended", "terminated", "fraud"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] website_url Value to be assigned
    def website_url=(website_url)
      if !website_url.nil? && website_url.to_s.length > 255
        fail ArgumentError, 'invalid value for "website_url", the character length must be smaller than or equal to 255.'
      end

      @website_url = website_url
    end

    # Custom attribute writer method with validation
    # @param [Object] logo Value to be assigned
    def logo=(logo)
      if !logo.nil? && logo.to_s.length > 255
        fail ArgumentError, 'invalid value for "logo", the character length must be smaller than or equal to 255.'
      end

      @logo = logo
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] international_calling Object to be assigned
    def international_calling=(international_calling)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(international_calling)
        fail ArgumentError, "invalid value for \"international_calling\", must be one of #{validator.allowable_values}."
      end
      @international_calling = international_calling
    end

    # Custom attribute writer method with validation
    # @param [Object] created_by_ip Value to be assigned
    def created_by_ip=(created_by_ip)
      if !created_by_ip.nil? && created_by_ip.to_s.length > 45
        fail ArgumentError, 'invalid value for "created_by_ip", the character length must be smaller than or equal to 45.'
      end

      if !created_by_ip.nil? && created_by_ip.to_s.length < 8
        fail ArgumentError, 'invalid value for "created_by_ip", the character length must be great than or equal to 8.'
      end

      @created_by_ip = created_by_ip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] call_debug Object to be assigned
    def call_debug=(call_debug)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(call_debug)
        fail ArgumentError, "invalid value for \"call_debug\", must be one of #{validator.allowable_values}."
      end
      @call_debug = call_debug
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] media_bypass Object to be assigned
    def media_bypass=(media_bypass)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(media_bypass)
        fail ArgumentError, "invalid value for \"media_bypass\", must be one of #{validator.allowable_values}."
      end
      @media_bypass = media_bypass
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_lock Object to be assigned
    def account_lock=(account_lock)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(account_lock)
        fail ArgumentError, "invalid value for \"account_lock\", must be one of #{validator.allowable_values}."
      end
      @account_lock = account_lock
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] call_recording Object to be assigned
    def call_recording=(call_recording)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(call_recording)
        fail ArgumentError, "invalid value for \"call_recording\", must be one of #{validator.allowable_values}."
      end
      @call_recording = call_recording
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cnam_look_ups Object to be assigned
    def cnam_look_ups=(cnam_look_ups)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(cnam_look_ups)
        fail ArgumentError, "invalid value for \"cnam_look_ups\", must be one of #{validator.allowable_values}."
      end
      @cnam_look_ups = cnam_look_ups
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hold_music Object to be assigned
    def hold_music=(hold_music)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(hold_music)
        fail ArgumentError, "invalid value for \"hold_music\", must be one of #{validator.allowable_values}."
      end
      @hold_music = hold_music
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transcribe_calls Object to be assigned
    def transcribe_calls=(transcribe_calls)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(transcribe_calls)
        fail ArgumentError, "invalid value for \"transcribe_calls\", must be one of #{validator.allowable_values}."
      end
      @transcribe_calls = transcribe_calls
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_bill_method Object to be assigned
    def default_bill_method=(default_bill_method)
      validator = EnumAttributeValidator.new('Object', ["credit", "paymentmethod"])
      unless validator.valid?(default_bill_method)
        fail ArgumentError, "invalid value for \"default_bill_method\", must be one of #{validator.allowable_values}."
      end
      @default_bill_method = default_bill_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          status == o.status &&
          website_url == o.website_url &&
          logo == o.logo &&
          credit == o.credit &&
          admin_user_id == o.admin_user_id &&
          billing_user_id == o.billing_user_id &&
          call_recording_user_id == o.call_recording_user_id &&
          call_forwarding_call_limit == o.call_forwarding_call_limit &&
          support_user_id == o.support_user_id &&
          automatic_refill_amount == o.automatic_refill_amount &&
          low_balance_alert_amount == o.low_balance_alert_amount &&
          low_balance_alert_at == o.low_balance_alert_at &&
          low_balance_alert_count == o.low_balance_alert_count &&
          last_automatic_refill_invoice == o.last_automatic_refill_invoice &&
          international_calling == o.international_calling &&
          created_by_ip == o.created_by_ip &&
          call_debug == o.call_debug &&
          media_bypass == o.media_bypass &&
          account_lock == o.account_lock &&
          call_recording == o.call_recording &&
          cdr_retention == o.cdr_retention &&
          cnam_look_ups == o.cnam_look_ups &&
          hold_music == o.hold_music &&
          transcribe_calls == o.transcribe_calls &&
          max_outbound_call_rate == o.max_outbound_call_rate &&
          default_bill_method == o.default_bill_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, status, website_url, logo, credit, admin_user_id, billing_user_id, call_recording_user_id, call_forwarding_call_limit, support_user_id, automatic_refill_amount, low_balance_alert_amount, low_balance_alert_at, low_balance_alert_count, last_automatic_refill_invoice, international_calling, created_by_ip, call_debug, media_bypass, account_lock, call_recording, cdr_retention, cnam_look_ups, hold_music, transcribe_calls, max_outbound_call_rate, default_bill_method].hash
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
        klass = CircuitIDAPIClient.const_get(type)
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
