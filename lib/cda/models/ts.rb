class Cda::TS < Cda::QTY
  attribute :value, DateTime, annotations: {:use=>:optional, :kind=>:attribute}
end
