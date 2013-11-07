class Cda::Organization
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true, :class=>"Cda::AD"}
  attribute :as_organization_part_of, Cda::OrganizationPartOf, annotations: {:class=>"Cda::OrganizationPartOf"}
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassOrganization"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :name, Array[Cda::ON], annotations: {:multiple=>true, :class=>"Cda::ON"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :standard_industry_class_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true, :class=>"Cda::TEL"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
