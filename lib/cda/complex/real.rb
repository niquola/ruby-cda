class Cda::REAL < Cda::QTY
  include Virtus.model
  attribute :value, Cda::Real, annotations: {:kind=>:attribute}
end
