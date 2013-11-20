class Cda::InfrastructureRootTypeId < Cda::II
  attribute :root, String, annotations: {:use=>:required, :kind=>:attribute}
  attribute :extension, Cda::St, annotations: {:use=>:required, :kind=>:attribute}
end
