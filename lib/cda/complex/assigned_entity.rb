class Cda::AssignedEntity
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :assigned_person, Cda::Person
  attribute :class_code, Cda::RoleClassAssignedEntity, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :id, Array[Cda::II]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :represented_organization, Cda::Organization
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
