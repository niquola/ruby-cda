require 'active_support/core_ext'
module Ccd
  module Dsl

    class CardinalityError < Exception
      def initialize(obj, name)
        @object = obj
        @name = name
      end

      def to_s
        @name
      end
    end

    def constraint(*args)
      opts = args.extract_options!
      name = args.shift
      @constraints ||= {}
      @constraints[name] = opts
      save_default_value(name, opts[:value]) if opts[:value]
      save_cardinality(name, opts[:cardinality]) if opts[:cardinality]
    end

    def build(attrs = {}, &block)
      new(attrs.with_indifferent_access.merge(defaults)).tap do |object|
        yield(object) if block_given?
        validate!(object)
      end
    end

    private

    def defaults
      @defaults || {}
    end

    def validate!(object)
      (@cardinalities || {}).each do |name, card|
        case card
        when '1..1'
          value = name.split('.').reduce(object) { |obj, chunk| obj.__send__(chunk) }
          raise CardinalityError.new(object, name) unless value
        end
      end
    end

    def save_default_value(name, value)
      @defaults ||= Hash.new { |h, k| h[k] = Hash.new(&h.default_proc) }
      path = name.split('.')
      if path.size == 1
        @defaults[name] = value
        return
      end
      key = path.pop
      hash = path.reduce(@defaults) { |h, n| h[n] }
      hash[key] = value
    end

    def save_cardinality(name, value)
      @cardinalities ||= {}
      @cardinalities[name] = value
    end
  end
end
