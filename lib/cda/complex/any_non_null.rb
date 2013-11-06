class Cda::ANYNonNull < Cda::ANY
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
end
