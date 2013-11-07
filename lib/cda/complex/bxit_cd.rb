class Cda::BXIT_CD < Cda::CD
  attribute :qty, Cda::Int, annotations: {:kind=>:attribute, :class=>"Cda::Int"}
end
