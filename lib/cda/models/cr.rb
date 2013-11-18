class Cda::CR < Cda::ANY
  attribute :name, Cda::CV
  attribute :value, Cda::CD
  attribute :inverted, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
