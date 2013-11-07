class Cda::InfrastructureRootTypeId < Cda::II
  attribute :extension, Cda::St, annotations: {:kind=>:attribute, :class=>"Cda::St"}
  attribute :root, Cda::Uid, annotations: {:kind=>:attribute, :class=>"Cda::Uid"}
end
