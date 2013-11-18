class Cda::BN < Cda::ANYNonNull
  attribute :value, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
