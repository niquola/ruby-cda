module Cda
  class Base
    include Virtus.model
    include StrictAttributes

    class_attribute :defaults, instance_writer: false

    self.defaults = {}

    def initialize(attrs = {}, &_)
      #FIXME: temporary hack with is_a?(Hash) to get things work
      attrs_with_defaults = attrs.is_a?(Hash) ? Cda::Utility.merge_json(attrs.with_indifferent_access, defaults) : attrs
      super(Utility.mk_class(attrs_with_defaults))
      yield self if block_given?
    end

    def ==(other)
      self.class == other.class && self.serialize == other.serialize
    end

    def serialize
      self.class.attribute_set.each_with_object({}) do |attr, hash|
        hash[attr.name] = serialize_value(self.send(attr.name))
      end.merge(_type: self.class.name)
    end

    def mixed?
      respond_to?(:_text)
    end

    def to_s
      if !mixed?
        super
      elsif _text.present?
        _text
      else
        super
      end
    end

    private

    def serialize_value(value)
      if value.is_a?(Array)
        serialized_value = value.map { |v| serialize_value(v) }
      elsif value.respond_to?(:independent?) && value.independent?
        nil
      else
        value.respond_to?(:serialize) ? value.serialize : value
      end
    end
  end
end