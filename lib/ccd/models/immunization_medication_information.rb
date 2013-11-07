module Ccd
  class ImmunizationMedicationInformation < ::Cda::ManufacturedProduct
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:9002).
    constraint 'class_code', cardinality: '1..1', value: 'MANU'

    #SHALL contain exactly one [1..1] templateId (CONF:9004) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.54" (CONF:10499).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.54'

    #MAY contain zero or more [0..*] id (CONF:9005).
    constraint 'id', cardinality: '0..*'

    #SHALL contain exactly one [1..1] manufacturedMaterial (CONF:9006).
    constraint 'manufactured_material', cardinality: '1..1'

    #This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Vaccine Administered Value Set 2.16.840.1.113883.3.88.12.80.22 DYNAMIC (CONF:9007).
    constraint 'manufactured_material.code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:9008).
    constraint 'manufactured_material.code.original_text', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:15555).
    constraint 'manufactured_material.code.original_text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15556).
    constraint 'manufactured_material.code.original_text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'manufactured_material.code.original_text.reference.value'

    #This code MAY contain zero or more [0..*] translation (CONF:9011).
    constraint 'manufactured_material.code.translation', cardinality: '0..*'

    #Translations can be used to represent generic product name, packaged product code, etc.
    constraint 'manufactured_material.code.translation'

    #This manufacturedMaterial SHOULD contain zero or one [0..1] lotNumberText (CONF:9014).
    constraint 'manufactured_material.lot_number_text', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] manufacturerOrganization (CONF:9012).
    constraint 'manufacturer_organization', cardinality: '0..1'

    Ccd.load_extension('immunization_medication_information.rb')
  end
end
