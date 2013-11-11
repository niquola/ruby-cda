class Cda::PlayingEntity < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :quantity, Array[Cda::PQ], annotations: {:multiple=>true, :class=>"Cda::PQ"}
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true, :class=>"Cda::PN"}
  attribute :birth_time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :desc, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClassRoot, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassRoot"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end
