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
        #validate!(object)
      end
    end

    #private

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
      @defaults = merge_json(@defaults || {}, inference(name.split('.'), value))
    end

    def inference(path, value, context = self)
      return value if path.blank?
      name = path.shift
      value = inference(path, value, attribute_class(context, name))
      if collection?(context, name)
        { name => [value] }
      else
        { name => value }
      end
    end

    def merge_json(x, y)
      hash_to_object object_to_hash(x).deep_merge(object_to_hash(y))
    end

    def hash_to_object(hash)
      return hash unless Hash === hash
      is_array = hash.keys.all? { |x| x.is_a?(Integer) }
      acc = is_array ? [] : {}
      hash.reduce(acc) { |acc, (k, v)| acc[k] = hash_to_object(v); acc }
    end

    def object_to_hash(object)
      case object
      when Array
        if object.size == 1
          value = object_to_hash(object[0])
          Hash.new { |h, k| k.is_a?(Integer) ? h[k] = value : nil }.merge(0 => value)
        else
          object.each_with_index.reduce({}) do |acc, (elem, index)|
            acc[index] = object_to_hash(elem)
            acc
          end
        end
      when Hash
        object.reduce({}) do |acc, (key, value)|
          acc[key] = object_to_hash(value)
          acc
        end
      else
        object
      end
    end

    def attribute_class(context, attribute)
      annotations(context, attribute)[:class].constantize
    end

    def collection?(context, attribute)
      annotations(context, attribute)[:multiple]
    end

    def annotations(context, attribute)
      context.attribute_set[attribute.to_sym].annotations
    end

    def save_cardinality(name, value)
      @cardinalities ||= {}
      @cardinalities[name] = value
    end
  end
end
