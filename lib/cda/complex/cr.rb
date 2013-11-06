class Cda::CR < Cda::ANY
  include Virtus.model
  attribute :inverted, Cda::Bn, annotations: {:kind=>:attribute}
  attribute :name, Cda::CV
  attribute :value, Cda::CD
end
