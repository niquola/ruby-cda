class Cda::Bn < Cda::Bl

end
class Cda::BN < Cda::ANYNonNull
  attribute :value, Cda::Bn, annotations: {:kind=>:attribute, :class=>"Cda::Bn"}
end
