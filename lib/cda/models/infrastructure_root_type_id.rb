class Cda::InfrastructureRootTypeId < Cda::II
  attribute :root, Cda::Uid, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::Uid"}
  attribute :extension, Cda::St, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::St"}
end
