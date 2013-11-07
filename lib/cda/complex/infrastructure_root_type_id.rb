class Cda::InfrastructureRootTypeId < Cda::II
  attribute :extension, Cda::St, annotations: {:kind=>:attribute}
  attribute :root, Cda::Uid, annotations: {:kind=>:attribute}
end
