class Cda::BL < Cda::ANY
  attribute :value, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
