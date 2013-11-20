class Cda::MO < Cda::QTY
  attribute :value, Float, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :currency, String, annotations: {:use=>:optional, :kind=>:attribute}
end
