class Cda::IVXB_MO < Cda::MO
  attribute :inclusive, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
