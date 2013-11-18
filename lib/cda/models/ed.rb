class Cda::ED < Cda::BIN
  attribute :reference, Cda::TEL, annotations: {:class=>"Cda::TEL"}
  attribute :thumbnail, Cda::Thumbnail, annotations: {:class=>"Cda::Thumbnail"}
  attribute :media_type, String, annotations: {:use=>:optional, :kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:use=>:optional, :kind=>:attribute, :class=>"String"}
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::CompressionAlgorithm"}
  attribute :integrity_check, Cda::Bin, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bin"}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::IntegrityCheckAlgorithm"}
  attribute :_text, String, annotations: {:class=>"String"}
end
