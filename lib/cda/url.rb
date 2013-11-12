class Cda::Url < String

end
class Cda::URL < Cda::ANY
  attribute :value, Cda::Url, annotations: {:kind=>:attribute, :class=>"Cda::Url"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
