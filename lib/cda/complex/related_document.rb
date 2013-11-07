class Cda::RelatedDocument < Cda::Base
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :parent_document, Cda::ParentDocument, annotations: {:class=>"Cda::ParentDocument"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::XActRelationshipDocument, annotations: {:kind=>:attribute, :class=>"Cda::XActRelationshipDocument"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
