class Cda::InfrastructureRootTypeId < Cda::II
  attribute :root, Cda::Uid, annotations: {:use=>:required, :kind=>:attribute}
  attribute :extension, Cda::St, annotations: {:use=>:required, :kind=>:attribute}
end
