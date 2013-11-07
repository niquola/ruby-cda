module Virtus
  module Annotated
    def self.extend?(attribute)
      true
    end

    def annotations
      options[:annotations] || {}
    end
  end
end

Virtus::Attribute.send(:include, Virtus::Annotated)
