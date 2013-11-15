class Cda::Int < Integer

end
class Cda::INT < Cda::QTY
  attribute :value, Cda::Int, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Int"}
end
