class Cda::II < Cda::ANY
  attribute :root, Cda::Uid, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :extension, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :assigning_authority_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :displayable, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
