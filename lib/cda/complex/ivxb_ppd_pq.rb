class Cda::IVXB_PPD_PQ < Cda::PPD_PQ
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
