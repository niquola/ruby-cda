class Cda::IVXB_PQ < Cda::PQ
  attribute :inclusive, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
