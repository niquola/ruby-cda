class Cda::URL < Cda::ANY
  attribute :value, Cda::Url, annotations: {:kind=>:attribute}
end
