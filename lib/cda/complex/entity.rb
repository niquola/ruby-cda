class Cda::Entity < Cda::Base
  attribute :class_code, Cda::EntityClassRoot, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassRoot"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :desc, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
