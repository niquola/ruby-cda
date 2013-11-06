class Cda::InfrastructureRootTypeId < Cda::II
  include Virtus.model
  attribute :extension, Cda::St, annotations: {:kind=>:attribute}
  attribute :root, Cda::Uid, annotations: {:kind=>:attribute}
end
