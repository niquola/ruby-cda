class Cda::AssociatedEntity
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :associated_person, Cda::Person
  attribute :class_code, Cda::RoleClassAssociative, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :scoping_organization, Cda::Organization
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
