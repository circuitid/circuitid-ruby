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
  class GetCallQueue200Response
    attr_accessor :name

    attr_accessor :strategy

    attr_accessor :announce_position

    attr_accessor :moh

    attr_accessor :caller_resume_timeout

    attr_accessor :max_wait_time

    attr_accessor :max_wait_time_no_agent

    attr_accessor :max_no_answer

    attr_accessor :no_answer_delay_timeout

    attr_accessor :reject_timeout

    attr_accessor :busy_timeout

    attr_accessor :wrap_up_timeout

    attr_accessor :time_based_score

    attr_accessor :tier_rules_apply

    attr_accessor :tier_rule_no_agent_no_wait

    attr_accessor :tier_rule_wait_second

    attr_accessor :tier_rule_wait_multiply_level

    attr_accessor :abandoned_resume_allowed

    attr_accessor :discard_abandoned_after

    attr_accessor :max_wait_time_no_agent_time_reached

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
        :'strategy' => :'strategy',
        :'announce_position' => :'announcePosition',
        :'moh' => :'moh',
        :'caller_resume_timeout' => :'callerResumeTimeout',
        :'max_wait_time' => :'maxWaitTime',
        :'max_wait_time_no_agent' => :'maxWaitTimeNoAgent',
        :'max_no_answer' => :'maxNoAnswer',
        :'no_answer_delay_timeout' => :'noAnswerDelayTimeout',
        :'reject_timeout' => :'rejectTimeout',
        :'busy_timeout' => :'busyTimeout',
        :'wrap_up_timeout' => :'wrapUpTimeout',
        :'time_based_score' => :'timeBasedScore',
        :'tier_rules_apply' => :'tierRulesApply',
        :'tier_rule_no_agent_no_wait' => :'tierRuleNoAgentNoWait',
        :'tier_rule_wait_second' => :'tierRuleWaitSecond',
        :'tier_rule_wait_multiply_level' => :'tierRuleWaitMultiplyLevel',
        :'abandoned_resume_allowed' => :'abandonedResumeAllowed',
        :'discard_abandoned_after' => :'discardAbandonedAfter',
        :'max_wait_time_no_agent_time_reached' => :'maxWaitTimeNoAgentTimeReached',
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
        :'strategy' => :'String',
        :'announce_position' => :'Integer',
        :'moh' => :'String',
        :'caller_resume_timeout' => :'Integer',
        :'max_wait_time' => :'Integer',
        :'max_wait_time_no_agent' => :'Integer',
        :'max_no_answer' => :'Integer',
        :'no_answer_delay_timeout' => :'Integer',
        :'reject_timeout' => :'Integer',
        :'busy_timeout' => :'Integer',
        :'wrap_up_timeout' => :'Integer',
        :'time_based_score' => :'String',
        :'tier_rules_apply' => :'Boolean',
        :'tier_rule_no_agent_no_wait' => :'Boolean',
        :'tier_rule_wait_second' => :'Integer',
        :'tier_rule_wait_multiply_level' => :'Boolean',
        :'abandoned_resume_allowed' => :'Boolean',
        :'discard_abandoned_after' => :'Integer',
        :'max_wait_time_no_agent_time_reached' => :'Integer',
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
      :'Callqueues',
      :'ResponseDate',
      :'ResponseUsers'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CircuitID::GetCallQueue200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CircuitID::GetCallQueue200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'strategy')
        self.strategy = attributes[:'strategy']
      end

      if attributes.key?(:'announce_position')
        self.announce_position = attributes[:'announce_position']
      end

      if attributes.key?(:'moh')
        self.moh = attributes[:'moh']
      else
        self.moh = 'deafult'
      end

      if attributes.key?(:'caller_resume_timeout')
        self.caller_resume_timeout = attributes[:'caller_resume_timeout']
      else
        self.caller_resume_timeout = 3600
      end

      if attributes.key?(:'max_wait_time')
        self.max_wait_time = attributes[:'max_wait_time']
      else
        self.max_wait_time = 300
      end

      if attributes.key?(:'max_wait_time_no_agent')
        self.max_wait_time_no_agent = attributes[:'max_wait_time_no_agent']
      else
        self.max_wait_time_no_agent = 300
      end

      if attributes.key?(:'max_no_answer')
        self.max_no_answer = attributes[:'max_no_answer']
      else
        self.max_no_answer = 1000000
      end

      if attributes.key?(:'no_answer_delay_timeout')
        self.no_answer_delay_timeout = attributes[:'no_answer_delay_timeout']
      else
        self.no_answer_delay_timeout = 60
      end

      if attributes.key?(:'reject_timeout')
        self.reject_timeout = attributes[:'reject_timeout']
      else
        self.reject_timeout = 60
      end

      if attributes.key?(:'busy_timeout')
        self.busy_timeout = attributes[:'busy_timeout']
      else
        self.busy_timeout = 60
      end

      if attributes.key?(:'wrap_up_timeout')
        self.wrap_up_timeout = attributes[:'wrap_up_timeout']
      else
        self.wrap_up_timeout = 10
      end

      if attributes.key?(:'time_based_score')
        self.time_based_score = attributes[:'time_based_score']
      else
        self.time_based_score = 'queue'
      end

      if attributes.key?(:'tier_rules_apply')
        self.tier_rules_apply = attributes[:'tier_rules_apply']
      else
        self.tier_rules_apply = false
      end

      if attributes.key?(:'tier_rule_no_agent_no_wait')
        self.tier_rule_no_agent_no_wait = attributes[:'tier_rule_no_agent_no_wait']
      else
        self.tier_rule_no_agent_no_wait = true
      end

      if attributes.key?(:'tier_rule_wait_second')
        self.tier_rule_wait_second = attributes[:'tier_rule_wait_second']
      else
        self.tier_rule_wait_second = 300
      end

      if attributes.key?(:'tier_rule_wait_multiply_level')
        self.tier_rule_wait_multiply_level = attributes[:'tier_rule_wait_multiply_level']
      else
        self.tier_rule_wait_multiply_level = true
      end

      if attributes.key?(:'abandoned_resume_allowed')
        self.abandoned_resume_allowed = attributes[:'abandoned_resume_allowed']
      else
        self.abandoned_resume_allowed = true
      end

      if attributes.key?(:'discard_abandoned_after')
        self.discard_abandoned_after = attributes[:'discard_abandoned_after']
      else
        self.discard_abandoned_after = 14400
      end

      if attributes.key?(:'max_wait_time_no_agent_time_reached')
        self.max_wait_time_no_agent_time_reached = attributes[:'max_wait_time_no_agent_time_reached']
      else
        self.max_wait_time_no_agent_time_reached = 5
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

      if @strategy.nil?
        invalid_properties.push('invalid value for "strategy", strategy cannot be nil.')
      end

      if @moh.nil?
        invalid_properties.push('invalid value for "moh", moh cannot be nil.')
      end

      if @moh.to_s.length > 255
        invalid_properties.push('invalid value for "moh", the character length must be smaller than or equal to 255.')
      end

      if @caller_resume_timeout.nil?
        invalid_properties.push('invalid value for "caller_resume_timeout", caller_resume_timeout cannot be nil.')
      end

      if @max_wait_time.nil?
        invalid_properties.push('invalid value for "max_wait_time", max_wait_time cannot be nil.')
      end

      if @max_wait_time_no_agent.nil?
        invalid_properties.push('invalid value for "max_wait_time_no_agent", max_wait_time_no_agent cannot be nil.')
      end

      if @max_no_answer.nil?
        invalid_properties.push('invalid value for "max_no_answer", max_no_answer cannot be nil.')
      end

      if @time_based_score.nil?
        invalid_properties.push('invalid value for "time_based_score", time_based_score cannot be nil.')
      end

      if @tier_rules_apply.nil?
        invalid_properties.push('invalid value for "tier_rules_apply", tier_rules_apply cannot be nil.')
      end

      if @tier_rule_no_agent_no_wait.nil?
        invalid_properties.push('invalid value for "tier_rule_no_agent_no_wait", tier_rule_no_agent_no_wait cannot be nil.')
      end

      if @tier_rule_wait_multiply_level.nil?
        invalid_properties.push('invalid value for "tier_rule_wait_multiply_level", tier_rule_wait_multiply_level cannot be nil.')
      end

      if @abandoned_resume_allowed.nil?
        invalid_properties.push('invalid value for "abandoned_resume_allowed", abandoned_resume_allowed cannot be nil.')
      end

      if @max_wait_time_no_agent_time_reached.nil?
        invalid_properties.push('invalid value for "max_wait_time_no_agent_time_reached", max_wait_time_no_agent_time_reached cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 45
      return false if @strategy.nil?
      strategy_validator = EnumAttributeValidator.new('String', ["ring-all", "longest-idle-agent", "round-robin", "top-down", "agent-with-least-talk-time", "agent-with-fewest-calls", "sequentially-by-agent-order", "random"])
      return false unless strategy_validator.valid?(@strategy)
      return false if @moh.nil?
      return false if @moh.to_s.length > 255
      return false if @caller_resume_timeout.nil?
      return false if @max_wait_time.nil?
      return false if @max_wait_time_no_agent.nil?
      return false if @max_no_answer.nil?
      return false if @time_based_score.nil?
      time_based_score_validator = EnumAttributeValidator.new('String', ["queue", "system"])
      return false unless time_based_score_validator.valid?(@time_based_score)
      return false if @tier_rules_apply.nil?
      return false if @tier_rule_no_agent_no_wait.nil?
      return false if @tier_rule_wait_multiply_level.nil?
      return false if @abandoned_resume_allowed.nil?
      return false if @max_wait_time_no_agent_time_reached.nil?
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
    # @param [Object] strategy Object to be assigned
    def strategy=(strategy)
      validator = EnumAttributeValidator.new('String', ["ring-all", "longest-idle-agent", "round-robin", "top-down", "agent-with-least-talk-time", "agent-with-fewest-calls", "sequentially-by-agent-order", "random"])
      unless validator.valid?(strategy)
        fail ArgumentError, "invalid value for \"strategy\", must be one of #{validator.allowable_values}."
      end
      @strategy = strategy
    end

    # Custom attribute writer method with validation
    # @param [Object] moh Value to be assigned
    def moh=(moh)
      if moh.nil?
        fail ArgumentError, 'moh cannot be nil'
      end

      if moh.to_s.length > 255
        fail ArgumentError, 'invalid value for "moh", the character length must be smaller than or equal to 255.'
      end

      @moh = moh
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] time_based_score Object to be assigned
    def time_based_score=(time_based_score)
      validator = EnumAttributeValidator.new('String', ["queue", "system"])
      unless validator.valid?(time_based_score)
        fail ArgumentError, "invalid value for \"time_based_score\", must be one of #{validator.allowable_values}."
      end
      @time_based_score = time_based_score
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          strategy == o.strategy &&
          announce_position == o.announce_position &&
          moh == o.moh &&
          caller_resume_timeout == o.caller_resume_timeout &&
          max_wait_time == o.max_wait_time &&
          max_wait_time_no_agent == o.max_wait_time_no_agent &&
          max_no_answer == o.max_no_answer &&
          no_answer_delay_timeout == o.no_answer_delay_timeout &&
          reject_timeout == o.reject_timeout &&
          busy_timeout == o.busy_timeout &&
          wrap_up_timeout == o.wrap_up_timeout &&
          time_based_score == o.time_based_score &&
          tier_rules_apply == o.tier_rules_apply &&
          tier_rule_no_agent_no_wait == o.tier_rule_no_agent_no_wait &&
          tier_rule_wait_second == o.tier_rule_wait_second &&
          tier_rule_wait_multiply_level == o.tier_rule_wait_multiply_level &&
          abandoned_resume_allowed == o.abandoned_resume_allowed &&
          discard_abandoned_after == o.discard_abandoned_after &&
          max_wait_time_no_agent_time_reached == o.max_wait_time_no_agent_time_reached &&
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
      [name, strategy, announce_position, moh, caller_resume_timeout, max_wait_time, max_wait_time_no_agent, max_no_answer, no_answer_delay_timeout, reject_timeout, busy_timeout, wrap_up_timeout, time_based_score, tier_rules_apply, tier_rule_no_agent_no_wait, tier_rule_wait_second, tier_rule_wait_multiply_level, abandoned_resume_allowed, discard_abandoned_after, max_wait_time_no_agent_time_reached, created_by_user_id, updated_by_user_id, created_at, updated_at].hash
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