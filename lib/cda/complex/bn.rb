class Cda::BN < Cda::ANYNonNull
  attribute :value, Cda::Bn, annotations: {:kind=>:attribute}
end
