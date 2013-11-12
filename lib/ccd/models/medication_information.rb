module Ccd
  class MedicationInformation < ::Cda::ManufacturedProduct
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7408).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"MANU"}

    # SHALL contain exactly one [1..1] templateId (CONF:7409) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:10506).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.23"}

    # SHALL contain exactly one [1..1] manufacturedMaterial (CONF:7411).
    constraint 'manufactured_material', {:cardinality=>"1..1"}

    # This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug Name Value Set 2.16.840.1.113883.3.88.12.80.17 DYNAMIC (CONF:7412).
    constraint 'manufactured_material.code', {:cardinality=>"1..1"}

    Ccd.load_extension('medication_information.rb')
  end
end
