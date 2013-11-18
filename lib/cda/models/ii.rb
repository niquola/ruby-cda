class Cda::II < Cda::ANY
  attribute :root, Cda::Uid, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Uid"}
  attribute :extension, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
  attribute :assigning_authority_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
  attribute :displayable, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
