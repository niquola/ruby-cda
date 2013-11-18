class Cda::ED < Cda::BIN
  attribute :reference, Cda::TEL
  attribute :thumbnail, Cda::Thumbnail
  attribute :media_type, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :language, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :integrity_check, Cda::Bin, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
