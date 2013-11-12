class Cda::InfrastructureRootTypeId < Cda::II
  attribute :root, Cda::Uid, annotations: {:kind=>:attribute, :class=>"Cda::Uid"}
  attribute :extension, Cda::St, annotations: {:kind=>:attribute, :class=>"Cda::St"}
end
