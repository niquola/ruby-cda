class Cda::BXIT_CD < Cda::CD
  attribute :qty, Cda::Int, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Int"}
end
