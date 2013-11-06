class Cda::URL < Cda::ANY
  include Virtus.model
  attribute :value, Cda::Url, annotations: {:kind=>:attribute}
end
