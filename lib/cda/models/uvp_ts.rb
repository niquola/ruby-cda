class Cda::UVP_TS < Cda::TS
  attribute :probability, Cda::Probability, annotations: {:use=>:optional, :kind=>:attribute}
end
