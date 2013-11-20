class Cda::PQ < Cda::QTY
  attribute :translation, Array[Cda::PQR], annotations: {:multiple=>true}
  attribute :value, Float, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :unit, String, annotations: {:use=>:optional, :kind=>:attribute}
end
