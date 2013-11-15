class Cda::Bl < String

end
class Cda::BL < Cda::ANY
  attribute :value, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
