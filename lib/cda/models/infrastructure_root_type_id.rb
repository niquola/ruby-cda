class Cda::InfrastructureRootTypeId < Cda::II
  attribute :root, String, annotations: {:use=>:required, :kind=>:attribute}
  attribute :extension, String, annotations: {:use=>:required, :kind=>:attribute}
end
