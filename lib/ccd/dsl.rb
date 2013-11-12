require 'active_support/core_ext'

module Ccd
  module Dsl
    attr_reader :constraints

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

      raise RuntimeError, "Duplicate constraint: #{self.name}##{name} #{opts.inspect}" if @constraints[name].present?
      @constraints[name] = opts

      save_default_value(name, opts[:value]) if opts[:value].present? && opts[:cardinality] == '1..1'
      #save_cardinality(name, opts[:cardinality]) if opts[:cardinality]
    end

    def build(attrs = {}, &block)
      new(Utility.mk_class(Utility.merge_json(attrs.with_indifferent_access, defaults))).tap do |object|
        yield(object) if block_given?
        #validate!(object)
      end
    end

    def dump(path)
      File.open(File.join(path, "#{self.name.underscore}.yml"), 'w') do |f|
        f.puts defaults.to_yaml
      end
    end

    #private
    module Utility
      extend self

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

      def mk_class(attrs)
        res = attrs.reduce({}) do |acc, (k, v)|
          acc[k] =
          case v
          when Hash
            mk_class(v)
          when Array
            v.map { |vv| mk_class(vv) }
          else
            v
          end
        acc
        end

        if res.key?(:_type)
          res.delete(:_type).constantize.new res
        else
          res
        end
      end
    end

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
      @defaults = Utility.merge_json(@defaults || {}, inference(name.split('.'), value))
    end

    def save_cardinality(name, value)
      @cardinalities ||= {}
      @cardinalities[name] = value
    end

    def inference(path, value, context = self)
      # puts if self == context
      # puts "inference(#{path}, #{value}, #{context})"
      return value if path.empty?

      name = path.shift

      if path.empty? && value.is_a?(Hash) && value.key?(:_type)
        klass = value[:_type].constantize
        is_collection = false
      else
        klass = attribute_class(context, name)
        is_collection = collection?(context, name)
      end

      value = inference(path, value, klass)

      if is_collection
        { name => [value] }
      else
        { name => value }
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
  end
end
