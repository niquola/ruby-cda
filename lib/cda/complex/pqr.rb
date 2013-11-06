class Cda::PQR < Cda::CV
  include Virtus.model
  attribute :value, Cda::Real, annotations: {:kind=>:attribute}
end
