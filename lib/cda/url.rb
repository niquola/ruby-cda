class Cda::Url < String

end
class Cda::URL < Cda::ANY
  attribute :value, Cda::Url, annotations: {:kind=>:attribute, :class=>"Cda::Url"}
end
