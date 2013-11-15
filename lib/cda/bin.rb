class Cda::Bin < String

end
class Cda::BIN < Cda::ANY
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::BinaryDataEncoding"}
  attribute :_text, String, annotations: {:class=>"String"}
end
