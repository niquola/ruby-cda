class Cda::TS < Cda::QTY
  attribute :value, Date, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Date"}
end
