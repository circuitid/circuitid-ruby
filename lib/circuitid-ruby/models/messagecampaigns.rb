=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.16
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module CircuitID
  class Messagecampaigns
    attr_accessor :name

    attr_accessor :campaign_id

    attr_accessor :brand_id

    # ObjectId (unique 12 bytes ID)
    attr_accessor :order

    attr_accessor :subscriber_optin

    attr_accessor :subscriber_optout

    attr_accessor :subscriber_help

    attr_accessor :number_pool

    attr_accessor :direct_lending

    attr_accessor :embedded_link

    attr_accessor :embedded_phone

    attr_accessor :affiliate_marketing

    attr_accessor :age_gated

    attr_accessor :mnos

    attr_accessor :reference_id

    attr_accessor :use_case

    attr_accessor :sub_use_cases

    attr_accessor :sample1

    attr_accessor :sample2

    attr_accessor :sample3

    attr_accessor :sample4

    attr_accessor :sample5

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
        :'campaign_id' => :'campaignId',
        :'brand_id' => :'brandId',
        :'order' => :'order',
        :'subscriber_optin' => :'subscriberOptin',
        :'subscriber_optout' => :'subscriberOptout',
        :'subscriber_help' => :'subscriberHelp',
        :'number_pool' => :'numberPool',
        :'direct_lending' => :'directLending',
        :'embedded_link' => :'embeddedLink',
        :'embedded_phone' => :'embeddedPhone',
        :'affiliate_marketing' => :'affiliateMarketing',
        :'age_gated' => :'ageGated',
        :'mnos' => :'mnos',
        :'reference_id' => :'referenceId',
        :'use_case' => :'useCase',
        :'sub_use_cases' => :'subUseCases',
        :'sample1' => :'sample1',
        :'sample2' => :'sample2',
        :'sample3' => :'sample3',
        :'sample4' => :'sample4',
        :'sample5' => :'sample5'
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
        :'campaign_id' => :'Object',
        :'brand_id' => :'Object',
        :'order' => :'Object',
        :'subscriber_optin' => :'Object',
        :'subscriber_optout' => :'Object',
        :'subscriber_help' => :'Object',
        :'number_pool' => :'Object',
        :'direct_lending' => :'Object',
        :'embedded_link' => :'Object',
        :'embedded_phone' => :'Object',
        :'affiliate_marketing' => :'Object',
        :'age_gated' => :'Object',
        :'mnos' => :'Object',
        :'reference_id' => :'Object',
        :'use_case' => :'Object',
        :'sub_use_cases' => :'Object',
        :'sample1' => :'Object',
        :'sample2' => :'Object',
        :'sample3' => :'Object',
        :'sample4' => :'Object',
        :'sample5' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'campaign_id',
        :'brand_id',
        :'order',
        :'subscriber_optin',
        :'subscriber_optout',
        :'subscriber_help',
        :'number_pool',
        :'direct_lending',
        :'embedded_link',
        :'embedded_phone',
        :'affiliate_marketing',
        :'age_gated',
        :'mnos',
        :'reference_id',
        :'use_case',
        :'sub_use_cases',
        :'sample1',
        :'sample2',
        :'sample3',
        :'sample4',
        :'sample5'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::Messagecampaigns` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::Messagecampaigns`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'brand_id')
        self.brand_id = attributes[:'brand_id']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'subscriber_optin')
        self.subscriber_optin = attributes[:'subscriber_optin']
      end

      if attributes.key?(:'subscriber_optout')
        self.subscriber_optout = attributes[:'subscriber_optout']
      end

      if attributes.key?(:'subscriber_help')
        self.subscriber_help = attributes[:'subscriber_help']
      end

      if attributes.key?(:'number_pool')
        self.number_pool = attributes[:'number_pool']
      end

      if attributes.key?(:'direct_lending')
        self.direct_lending = attributes[:'direct_lending']
      end

      if attributes.key?(:'embedded_link')
        self.embedded_link = attributes[:'embedded_link']
      end

      if attributes.key?(:'embedded_phone')
        self.embedded_phone = attributes[:'embedded_phone']
      end

      if attributes.key?(:'affiliate_marketing')
        self.affiliate_marketing = attributes[:'affiliate_marketing']
      end

      if attributes.key?(:'age_gated')
        self.age_gated = attributes[:'age_gated']
      end

      if attributes.key?(:'mnos')
        self.mnos = attributes[:'mnos']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'use_case')
        self.use_case = attributes[:'use_case']
      end

      if attributes.key?(:'sub_use_cases')
        self.sub_use_cases = attributes[:'sub_use_cases']
      end

      if attributes.key?(:'sample1')
        self.sample1 = attributes[:'sample1']
      end

      if attributes.key?(:'sample2')
        self.sample2 = attributes[:'sample2']
      end

      if attributes.key?(:'sample3')
        self.sample3 = attributes[:'sample3']
      end

      if attributes.key?(:'sample4')
        self.sample4 = attributes[:'sample4']
      end

      if attributes.key?(:'sample5')
        self.sample5 = attributes[:'sample5']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.to_s.length > 45
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 45.')
      end

      if !@campaign_id.nil? && @campaign_id.to_s.length > 45
        invalid_properties.push('invalid value for "campaign_id", the character length must be smaller than or equal to 45.')
      end

      if @brand_id.to_s.length > 45
        invalid_properties.push('invalid value for "brand_id", the character length must be smaller than or equal to 45.')
      end

      if !@reference_id.nil? && @reference_id.to_s.length > 45
        invalid_properties.push('invalid value for "reference_id", the character length must be smaller than or equal to 45.')
      end

      if !@use_case.nil? && @use_case.to_s.length > 45
        invalid_properties.push('invalid value for "use_case", the character length must be smaller than or equal to 45.')
      end

      if !@sample1.nil? && @sample1.to_s.length > 255
        invalid_properties.push('invalid value for "sample1", the character length must be smaller than or equal to 255.')
      end

      if !@sample2.nil? && @sample2.to_s.length > 255
        invalid_properties.push('invalid value for "sample2", the character length must be smaller than or equal to 255.')
      end

      if !@sample3.nil? && @sample3.to_s.length > 255
        invalid_properties.push('invalid value for "sample3", the character length must be smaller than or equal to 255.')
      end

      if !@sample4.nil? && @sample4.to_s.length > 255
        invalid_properties.push('invalid value for "sample4", the character length must be smaller than or equal to 255.')
      end

      if !@sample5.nil? && @sample5.to_s.length > 255
        invalid_properties.push('invalid value for "sample5", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.length > 45
      return false if !@campaign_id.nil? && @campaign_id.to_s.length > 45
      return false if @brand_id.to_s.length > 45
      subscriber_optin_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless subscriber_optin_validator.valid?(@subscriber_optin)
      subscriber_optout_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless subscriber_optout_validator.valid?(@subscriber_optout)
      subscriber_help_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless subscriber_help_validator.valid?(@subscriber_help)
      number_pool_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless number_pool_validator.valid?(@number_pool)
      direct_lending_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless direct_lending_validator.valid?(@direct_lending)
      embedded_link_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless embedded_link_validator.valid?(@embedded_link)
      embedded_phone_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless embedded_phone_validator.valid?(@embedded_phone)
      affiliate_marketing_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless affiliate_marketing_validator.valid?(@affiliate_marketing)
      age_gated_validator = EnumAttributeValidator.new('Object', ["1", "0"])
      return false unless age_gated_validator.valid?(@age_gated)
      return false if !@reference_id.nil? && @reference_id.to_s.length > 45
      return false if !@use_case.nil? && @use_case.to_s.length > 45
      return false if !@sample1.nil? && @sample1.to_s.length > 255
      return false if !@sample2.nil? && @sample2.to_s.length > 255
      return false if !@sample3.nil? && @sample3.to_s.length > 255
      return false if !@sample4.nil? && @sample4.to_s.length > 255
      return false if !@sample5.nil? && @sample5.to_s.length > 255
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
    # @param [Object] campaign_id Value to be assigned
    def campaign_id=(campaign_id)
      if !campaign_id.nil? && campaign_id.to_s.length > 45
        fail ArgumentError, 'invalid value for "campaign_id", the character length must be smaller than or equal to 45.'
      end

      @campaign_id = campaign_id
    end

    # Custom attribute writer method with validation
    # @param [Object] brand_id Value to be assigned
    def brand_id=(brand_id)
      if brand_id.to_s.length > 45
        fail ArgumentError, 'invalid value for "brand_id", the character length must be smaller than or equal to 45.'
      end

      @brand_id = brand_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscriber_optin Object to be assigned
    def subscriber_optin=(subscriber_optin)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(subscriber_optin)
        fail ArgumentError, "invalid value for \"subscriber_optin\", must be one of #{validator.allowable_values}."
      end
      @subscriber_optin = subscriber_optin
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscriber_optout Object to be assigned
    def subscriber_optout=(subscriber_optout)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(subscriber_optout)
        fail ArgumentError, "invalid value for \"subscriber_optout\", must be one of #{validator.allowable_values}."
      end
      @subscriber_optout = subscriber_optout
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscriber_help Object to be assigned
    def subscriber_help=(subscriber_help)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(subscriber_help)
        fail ArgumentError, "invalid value for \"subscriber_help\", must be one of #{validator.allowable_values}."
      end
      @subscriber_help = subscriber_help
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number_pool Object to be assigned
    def number_pool=(number_pool)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(number_pool)
        fail ArgumentError, "invalid value for \"number_pool\", must be one of #{validator.allowable_values}."
      end
      @number_pool = number_pool
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direct_lending Object to be assigned
    def direct_lending=(direct_lending)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(direct_lending)
        fail ArgumentError, "invalid value for \"direct_lending\", must be one of #{validator.allowable_values}."
      end
      @direct_lending = direct_lending
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] embedded_link Object to be assigned
    def embedded_link=(embedded_link)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(embedded_link)
        fail ArgumentError, "invalid value for \"embedded_link\", must be one of #{validator.allowable_values}."
      end
      @embedded_link = embedded_link
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] embedded_phone Object to be assigned
    def embedded_phone=(embedded_phone)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(embedded_phone)
        fail ArgumentError, "invalid value for \"embedded_phone\", must be one of #{validator.allowable_values}."
      end
      @embedded_phone = embedded_phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affiliate_marketing Object to be assigned
    def affiliate_marketing=(affiliate_marketing)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(affiliate_marketing)
        fail ArgumentError, "invalid value for \"affiliate_marketing\", must be one of #{validator.allowable_values}."
      end
      @affiliate_marketing = affiliate_marketing
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] age_gated Object to be assigned
    def age_gated=(age_gated)
      validator = EnumAttributeValidator.new('Object', ["1", "0"])
      unless validator.valid?(age_gated)
        fail ArgumentError, "invalid value for \"age_gated\", must be one of #{validator.allowable_values}."
      end
      @age_gated = age_gated
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_id Value to be assigned
    def reference_id=(reference_id)
      if !reference_id.nil? && reference_id.to_s.length > 45
        fail ArgumentError, 'invalid value for "reference_id", the character length must be smaller than or equal to 45.'
      end

      @reference_id = reference_id
    end

    # Custom attribute writer method with validation
    # @param [Object] use_case Value to be assigned
    def use_case=(use_case)
      if !use_case.nil? && use_case.to_s.length > 45
        fail ArgumentError, 'invalid value for "use_case", the character length must be smaller than or equal to 45.'
      end

      @use_case = use_case
    end

    # Custom attribute writer method with validation
    # @param [Object] sample1 Value to be assigned
    def sample1=(sample1)
      if !sample1.nil? && sample1.to_s.length > 255
        fail ArgumentError, 'invalid value for "sample1", the character length must be smaller than or equal to 255.'
      end

      @sample1 = sample1
    end

    # Custom attribute writer method with validation
    # @param [Object] sample2 Value to be assigned
    def sample2=(sample2)
      if !sample2.nil? && sample2.to_s.length > 255
        fail ArgumentError, 'invalid value for "sample2", the character length must be smaller than or equal to 255.'
      end

      @sample2 = sample2
    end

    # Custom attribute writer method with validation
    # @param [Object] sample3 Value to be assigned
    def sample3=(sample3)
      if !sample3.nil? && sample3.to_s.length > 255
        fail ArgumentError, 'invalid value for "sample3", the character length must be smaller than or equal to 255.'
      end

      @sample3 = sample3
    end

    # Custom attribute writer method with validation
    # @param [Object] sample4 Value to be assigned
    def sample4=(sample4)
      if !sample4.nil? && sample4.to_s.length > 255
        fail ArgumentError, 'invalid value for "sample4", the character length must be smaller than or equal to 255.'
      end

      @sample4 = sample4
    end

    # Custom attribute writer method with validation
    # @param [Object] sample5 Value to be assigned
    def sample5=(sample5)
      if !sample5.nil? && sample5.to_s.length > 255
        fail ArgumentError, 'invalid value for "sample5", the character length must be smaller than or equal to 255.'
      end

      @sample5 = sample5
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          campaign_id == o.campaign_id &&
          brand_id == o.brand_id &&
          order == o.order &&
          subscriber_optin == o.subscriber_optin &&
          subscriber_optout == o.subscriber_optout &&
          subscriber_help == o.subscriber_help &&
          number_pool == o.number_pool &&
          direct_lending == o.direct_lending &&
          embedded_link == o.embedded_link &&
          embedded_phone == o.embedded_phone &&
          affiliate_marketing == o.affiliate_marketing &&
          age_gated == o.age_gated &&
          mnos == o.mnos &&
          reference_id == o.reference_id &&
          use_case == o.use_case &&
          sub_use_cases == o.sub_use_cases &&
          sample1 == o.sample1 &&
          sample2 == o.sample2 &&
          sample3 == o.sample3 &&
          sample4 == o.sample4 &&
          sample5 == o.sample5
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, campaign_id, brand_id, order, subscriber_optin, subscriber_optout, subscriber_help, number_pool, direct_lending, embedded_link, embedded_phone, affiliate_marketing, age_gated, mnos, reference_id, use_case, sub_use_cases, sample1, sample2, sample3, sample4, sample5].hash
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
