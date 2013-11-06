class Cda::IVXB_PQ < Cda::PQ
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
