class Cda::Organization < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :name, Array[Cda::ON], annotations: {:multiple=>true, :class=>"Cda::ON"}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true, :class=>"Cda::TEL"}
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true, :class=>"Cda::AD"}
  attribute :standard_industry_class_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :as_organization_part_of, Cda::OrganizationPartOf, annotations: {:class=>"Cda::OrganizationPartOf"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::EntityClassOrganization"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end
