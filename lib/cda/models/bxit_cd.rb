class Cda::BXIT_CD < Cda::CD
  attribute :qty, Integer, annotations: {:use=>:optional, :kind=>:attribute}
end
