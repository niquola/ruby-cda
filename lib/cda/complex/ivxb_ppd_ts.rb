class Cda::IVXB_PPD_TS < Cda::PPD_TS
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
