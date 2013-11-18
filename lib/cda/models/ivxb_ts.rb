class Cda::IVXB_TS < Cda::TS
  attribute :inclusive, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
