class Cda::BN < Cda::ANYNonNull
  include Virtus.model
  attribute :value, Cda::Bn, annotations: {:kind=>:attribute}
end
