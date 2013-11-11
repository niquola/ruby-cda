class Cda::PQ < Cda::QTY
  attribute :translation, Array[Cda::PQR], annotations: {:multiple=>true, :class=>"Cda::PQR"}
  attribute :value, Cda::Real, annotations: {:kind=>:attribute, :class=>"Cda::Real"}
  attribute :unit, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
end
