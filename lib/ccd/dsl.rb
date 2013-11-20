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

    def dump(path)
      File.open(File.join(path, "#{self.name.underscore}.yml"), 'w') do |f|
        f.puts defaults.to_yaml
      end
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
      self.defaults = Cda::Utility.merge_json(defaults, inference(name.split('.'), value))
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
        {name => [value]}
      else
        {name => value}
      end
    end

    def attribute_class(context, attribute)
      attribute_decl = context.attribute_set[attribute.to_sym]

      type = attribute_decl.respond_to?(:member_type) ? attribute_decl.member_type : attribute_decl.type
      type.primitive
    end

    def collection?(context, attribute)
      annotations(context, attribute)[:multiple]
    end

    def annotations(context, attribute)
      context.attribute_set[attribute.to_sym].annotations
    end
  end
end
