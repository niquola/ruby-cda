module Ccd
  class MedicationInformation < ::Cda::ManufacturedProduct
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7408).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"MANU", :code_system=>"2.16.840.1.113883.5.110"}}

    #SHALL contain exactly one [1..1] templateId (CONF:7409) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:10506).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.23"}

    #MAY contain zero or more [0..*] id (CONF:7410).
    constraint 'id', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] manufacturedMaterial (CONF:7411).
    constraint 'manufactured_material', {:cardinality=>"1..1"}

    #This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug Name Value Set 2.16.840.1.113883.3.88.12.80.17 DYNAMIC (CONF:7412).
    constraint 'manufactured_material.code', {:cardinality=>"1..1"}

    #This code SHOULD contain zero or one [0..1] originalText (CONF:7413).
    constraint 'manufactured_material.code.original_text', {:cardinality=>"0..1"}

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:15986).
    constraint 'manufactured_material.code.original_text.reference', {:cardinality=>"0..1"}

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15987).
    constraint 'manufactured_material.code.original_text.reference.value', {:cardinality=>"0..1"}

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'manufactured_material.code.original_text.reference.value', {}

    #This code MAY contain zero or more [0..*] translation (CONF:7414).
    constraint 'manufactured_material.code.translation', {:cardinality=>"0..*"}

    #Translations can be used to represent generic product name, packaged product code, etc.
    constraint 'manufactured_material.code.translation', {}

    #MAY contain zero or one [0..1] manufacturerOrganization (CONF:7416).
    constraint 'manufacturer_organization', {:cardinality=>"0..1"}

    Ccd.load_extension('medication_information.rb')
  end
end
