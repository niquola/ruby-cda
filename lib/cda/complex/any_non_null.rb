class Cda::ANYNonNull < Cda::ANY
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
end
