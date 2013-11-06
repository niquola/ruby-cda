class Cda::Guardian
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :id, Array[Cda::II]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
