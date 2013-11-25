module Cda
  class Timestamp < Virtus::Attribute
    def coerce(input)
      input.is_a?(DateTime) ? input : super
    end

    def self.build_type(*)
      Axiom::Types::Date
    end
  end
end