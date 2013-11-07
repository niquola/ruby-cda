class Cda::Birthplace
  include Virtus.model
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :place, Cda::Place
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
