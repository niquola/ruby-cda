require 'cda/autoloads'
require 'active_support/core_ext/string'
require 'active_support/core_ext/object'

module Cda
  extend self

  autoload :XmlBuilder, "cda/xml_builder"
  autoload :XmlParser, "cda/xml_parser"
  autoload :TemplatesRegistry, "cda/templates_registry"
  autoload :RSpec, "cda/rspec"
  autoload :MetaInfo, "cda/meta_info"
  autoload :StrictAttributes, 'cda/strict_attributes'
  autoload :Utility, 'cda/utility'

  class Base
    include Virtus.model
    include StrictAttributes

    def self.build(attrs = {}, &_)
      new(Utility.mk_class(attrs.with_indifferent_access)).tap do |object|
        yield(object) if block_given?
        #validate!(object)
      end
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
