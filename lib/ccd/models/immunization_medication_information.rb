module Ccd
  class ImmunizationMedicationInformation < ::Cda::ManufacturedProduct
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:9002).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"MANU", :code_system=>"2.16.840.1.113883.5.110"}}

    # SHALL contain exactly one [1..1] templateId (CONF:9004) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.54" (CONF:10499).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.54"}

    # SHALL contain exactly one [1..1] manufacturedMaterial (CONF:9006).
    constraint 'manufactured_material', {:cardinality=>"1..1"}

    # This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Vaccine Administered Value Set 2.16.840.1.113883.3.88.12.80.22 DYNAMIC (CONF:9007).
    constraint 'manufactured_material.code', {:cardinality=>"1..1"}

    Ccd.load_extension('immunization_medication_information.rb')
  end
end
