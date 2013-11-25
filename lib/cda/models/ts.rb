class Cda::TS < Cda::QTY
  attribute :value, Cda::Timestamp, annotations: {:use=>:optional, :kind=>:attribute}
end
