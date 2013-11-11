class Cda::INT < Cda::QTY
  attribute :value, Cda::Int, annotations: {:kind=>:attribute, :class=>"Cda::Int"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
