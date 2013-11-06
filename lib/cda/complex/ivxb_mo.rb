class Cda::IVXB_MO < Cda::MO
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
