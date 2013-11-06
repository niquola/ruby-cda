class Cda::PlayingEntity
  include Virtus.model
  attribute :birth_time, Cda::TS
  attribute :class_code, Cda::EntityClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :desc, Cda::ED
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :name, Array[Cda::PN]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :quantity, Array[Cda::PQ]
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
