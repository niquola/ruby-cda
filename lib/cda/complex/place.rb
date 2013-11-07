class Cda::Place < Cda::Base
  attribute :addr, Cda::AD, annotations: {:class=>"Cda::AD"}
  attribute :class_code, Cda::EntityClassPlace, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassPlace"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
  attribute :name, Cda::EN, annotations: {:class=>"Cda::EN"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
