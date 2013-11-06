class Cda::Entity
  include Virtus.model
  attribute :class_code, Cda::EntityClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :desc, Cda::ED
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
