class Cda::BXIT_CD < Cda::CD
  include Virtus.model
  attribute :qty, Cda::Int, annotations: {:kind=>:attribute}
end
