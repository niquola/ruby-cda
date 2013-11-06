class Cda::IVXB_TS < Cda::TS
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
