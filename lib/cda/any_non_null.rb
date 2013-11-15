class Cda::ANYNonNull < Cda::ANY
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::NullFlavor"}
end
