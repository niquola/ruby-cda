class Cda::Url < String

end
class Cda::URL < Cda::ANY
  attribute :value, Cda::Url, annotations: {:use=>:optional, :kind=>:attribute}
end
