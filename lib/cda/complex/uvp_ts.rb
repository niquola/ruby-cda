class Cda::UVP_TS < Cda::TS
  include Virtus.model
  attribute :probability, Cda::Probability, annotations: {:kind=>:attribute}
end
