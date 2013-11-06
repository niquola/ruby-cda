class Cda::BL < Cda::ANY
  include Virtus.model
  attribute :value, Cda::Bl, annotations: {:kind=>:attribute}
end
