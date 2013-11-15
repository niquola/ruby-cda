class Cda::IVXB_INT < Cda::INT
  attribute :inclusive, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
