require 'cda/autoloads'

module Cda
  class Base
    include Virtus.model

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
