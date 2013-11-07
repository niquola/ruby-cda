class Cda::PQ < Cda::QTY
  attribute :translation, Array[Cda::PQR], annotations: {:multiple=>true}
  attribute :unit, Cda::Cs, annotations: {:kind=>:attribute}
  attribute :value, Cda::Real, annotations: {:kind=>:attribute}
end
