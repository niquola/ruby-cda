class Cda::BN < Cda::ANYNonNull
  attribute :value, Cda::Bn, annotations: {:kind=>:attribute, :class=>"Cda::Bn"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
