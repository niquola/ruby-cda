class Cda::Birthplace < Cda::Base
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute, :class=>"Cda::RoleClass"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :place, Cda::Place, annotations: {:class=>"Cda::Place"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
