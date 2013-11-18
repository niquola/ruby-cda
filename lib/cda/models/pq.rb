class Cda::PQ < Cda::QTY
  attribute :translation, Array[Cda::PQR], annotations: {:multiple=>true}
  attribute :value, Cda::Real, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :unit, String, annotations: {:use=>:optional, :kind=>:attribute}
end
