class Cda::CR < Cda::ANY
  attribute :inverted, Cda::Bn, annotations: {:kind=>:attribute}
  attribute :name, Cda::CV
  attribute :value, Cda::CD
end
