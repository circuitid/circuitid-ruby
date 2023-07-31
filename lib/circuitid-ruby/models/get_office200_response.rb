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
  class GetOffice200Response
    attr_accessor :name

    attr_accessor :street_number

    attr_accessor :street_name

    attr_accessor :pre_direction

    attr_accessor :street_suffix

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip_code

    attr_accessor :address2

    attr_accessor :country

    # ObjectId (unique 12 bytes ID)
    attr_accessor :region

    # ObjectId (unique 12 bytes ID)
    attr_accessor :_id

    # ObjectId (unique 12 bytes ID)
    attr_accessor :created_by_user_id

    # ObjectId (unique 12 bytes ID)
    attr_accessor :updated_by_user_id

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'street_number' => :'streetNumber',
        :'street_name' => :'streetName',
        :'pre_direction' => :'preDirection',
        :'street_suffix' => :'streetSuffix',
        :'city' => :'city',
        :'state' => :'state',
        :'zip_code' => :'zipCode',
        :'address2' => :'address2',
        :'country' => :'country',
        :'region' => :'region',
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
        :'name' => :'String',
        :'street_number' => :'String',
        :'street_name' => :'String',
        :'pre_direction' => :'String',
        :'street_suffix' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip_code' => :'String',
        :'address2' => :'String',
        :'country' => :'String',
        :'region' => :'String',
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
      :'Offices',
      :'ResponseDate',
      :'ResponseUsers'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::GetOffice200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::GetOffice200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'street_number')
        self.street_number = attributes[:'street_number']
      end

      if attributes.key?(:'street_name')
        self.street_name = attributes[:'street_name']
      end

      if attributes.key?(:'pre_direction')
        self.pre_direction = attributes[:'pre_direction']
      end

      if attributes.key?(:'street_suffix')
        self.street_suffix = attributes[:'street_suffix']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
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

      if @name.to_s.length > 45
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 45.')
      end

      if @street_number.nil?
        invalid_properties.push('invalid value for "street_number", street_number cannot be nil.')
      end

      if @street_number.to_s.length > 45
        invalid_properties.push('invalid value for "street_number", the character length must be smaller than or equal to 45.')
      end

      if @street_name.nil?
        invalid_properties.push('invalid value for "street_name", street_name cannot be nil.')
      end

      if @street_name.to_s.length > 20
        invalid_properties.push('invalid value for "street_name", the character length must be smaller than or equal to 20.')
      end

      if !@pre_direction.nil? && @pre_direction.to_s.length > 2
        invalid_properties.push('invalid value for "pre_direction", the character length must be smaller than or equal to 2.')
      end

      if @street_suffix.nil?
        invalid_properties.push('invalid value for "street_suffix", street_suffix cannot be nil.')
      end

      if @street_suffix.to_s.length > 4
        invalid_properties.push('invalid value for "street_suffix", the character length must be smaller than or equal to 4.')
      end

      if @street_suffix.to_s.length < 2
        invalid_properties.push('invalid value for "street_suffix", the character length must be great than or equal to 2.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length > 45
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 45.')
      end

      if !@state.nil? && @state.to_s.length > 45
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 45.')
      end

      if !@zip_code.nil? && @zip_code.to_s.length > 45
        invalid_properties.push('invalid value for "zip_code", the character length must be smaller than or equal to 45.')
      end

      if !@address2.nil? && @address2.to_s.length > 45
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 45.')
      end

      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      if @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if @country.to_s.length < 2
        invalid_properties.push('invalid value for "country", the character length must be great than or equal to 2.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 45
      return false if @street_number.nil?
      return false if @street_number.to_s.length > 45
      return false if @street_name.nil?
      return false if @street_name.to_s.length > 20
      return false if !@pre_direction.nil? && @pre_direction.to_s.length > 2
      return false if @street_suffix.nil?
      return false if @street_suffix.to_s.length > 4
      return false if @street_suffix.to_s.length < 2
      return false if @city.nil?
      return false if @city.to_s.length > 45
      return false if !@state.nil? && @state.to_s.length > 45
      return false if !@zip_code.nil? && @zip_code.to_s.length > 45
      return false if !@address2.nil? && @address2.to_s.length > 45
      return false if @country.nil?
      return false if @country.to_s.length > 2
      return false if @country.to_s.length < 2
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
    # @param [Object] street_number Value to be assigned
    def street_number=(street_number)
      if street_number.nil?
        fail ArgumentError, 'street_number cannot be nil'
      end

      if street_number.to_s.length > 45
        fail ArgumentError, 'invalid value for "street_number", the character length must be smaller than or equal to 45.'
      end

      @street_number = street_number
    end

    # Custom attribute writer method with validation
    # @param [Object] street_name Value to be assigned
    def street_name=(street_name)
      if street_name.nil?
        fail ArgumentError, 'street_name cannot be nil'
      end

      if street_name.to_s.length > 20
        fail ArgumentError, 'invalid value for "street_name", the character length must be smaller than or equal to 20.'
      end

      @street_name = street_name
    end

    # Custom attribute writer method with validation
    # @param [Object] pre_direction Value to be assigned
    def pre_direction=(pre_direction)
      if !pre_direction.nil? && pre_direction.to_s.length > 2
        fail ArgumentError, 'invalid value for "pre_direction", the character length must be smaller than or equal to 2.'
      end

      @pre_direction = pre_direction
    end

    # Custom attribute writer method with validation
    # @param [Object] street_suffix Value to be assigned
    def street_suffix=(street_suffix)
      if street_suffix.nil?
        fail ArgumentError, 'street_suffix cannot be nil'
      end

      if street_suffix.to_s.length > 4
        fail ArgumentError, 'invalid value for "street_suffix", the character length must be smaller than or equal to 4.'
      end

      if street_suffix.to_s.length < 2
        fail ArgumentError, 'invalid value for "street_suffix", the character length must be great than or equal to 2.'
      end

      @street_suffix = street_suffix
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length > 45
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 45.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if !state.nil? && state.to_s.length > 45
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 45.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_code Value to be assigned
    def zip_code=(zip_code)
      if !zip_code.nil? && zip_code.to_s.length > 45
        fail ArgumentError, 'invalid value for "zip_code", the character length must be smaller than or equal to 45.'
      end

      @zip_code = zip_code
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      if !address2.nil? && address2.to_s.length > 45
        fail ArgumentError, 'invalid value for "address2", the character length must be smaller than or equal to 45.'
      end

      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.nil?
        fail ArgumentError, 'country cannot be nil'
      end

      if country.to_s.length > 2
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 2.'
      end

      if country.to_s.length < 2
        fail ArgumentError, 'invalid value for "country", the character length must be great than or equal to 2.'
      end

      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          street_number == o.street_number &&
          street_name == o.street_name &&
          pre_direction == o.pre_direction &&
          street_suffix == o.street_suffix &&
          city == o.city &&
          state == o.state &&
          zip_code == o.zip_code &&
          address2 == o.address2 &&
          country == o.country &&
          region == o.region &&
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
      [name, street_number, street_name, pre_direction, street_suffix, city, state, zip_code, address2, country, region, _id, created_by_user_id, updated_by_user_id, created_at, updated_at].hash
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
