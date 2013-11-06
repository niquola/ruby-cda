class Cda::MO < Cda::QTY
  include Virtus.model
  attribute :currency, Cda::Cs, annotations: {:kind=>:attribute}
  attribute :value, Cda::Real, annotations: {:kind=>:attribute}
end
