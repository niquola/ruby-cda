class Cda::MO < Cda::QTY
  attribute :currency, Cda::Cs, annotations: {:kind=>:attribute}
  attribute :value, Cda::Real, annotations: {:kind=>:attribute}
end
