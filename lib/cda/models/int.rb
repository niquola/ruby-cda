class Cda::INT < Cda::QTY
  attribute :value, Integer, annotations: {:use=>:optional, :kind=>:attribute}
end
