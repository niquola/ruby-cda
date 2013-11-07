class Cda::II < Cda::ANY
  attribute :assigning_authority_name, Cda::St, annotations: {:kind=>:attribute}
  attribute :displayable, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :extension, Cda::St, annotations: {:kind=>:attribute}
  attribute :root, Cda::Uid, annotations: {:kind=>:attribute}
end
