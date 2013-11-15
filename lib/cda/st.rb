class Cda::St < String

end
class Cda::ST < Cda::ED
  attribute :reference, Cda::TEL, annotations: {:class=>"Cda::TEL"}
  attribute :thumbnail, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute, :class=>"Cda::BinaryDataEncoding"}
  attribute :media_type, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
  attribute :language, Cda::Cs, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Cs"}
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::CompressionAlgorithm"}
  attribute :integrity_check, Cda::Bin, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::Bin"}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::IntegrityCheckAlgorithm"}
  attribute :_text, String, annotations: {:class=>"String"}
end
