class Cda::INT < Cda::QTY
  include Virtus.model
  attribute :value, Cda::Int, annotations: {:kind=>:attribute}
end
