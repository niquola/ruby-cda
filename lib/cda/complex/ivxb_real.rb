class Cda::IVXB_REAL < Cda::REAL
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
