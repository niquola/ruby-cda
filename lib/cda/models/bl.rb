class Cda::BL < Cda::ANY
  attribute :value, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
