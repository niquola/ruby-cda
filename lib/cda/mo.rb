class Cda::MO < Cda::QTY
  attribute :value, Cda::Real, annotations: {:kind=>:attribute, :class=>"Cda::Real"}
  attribute :currency, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
end
