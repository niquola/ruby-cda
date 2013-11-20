class Cda::II < Cda::ANY
  attribute :root, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :extension, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :assigning_authority_name, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :displayable, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
