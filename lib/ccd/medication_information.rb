module Ccd
  class MedicationInformation < ::Cda::ManufacturedProduct
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7408).
    constraint 'classCode', cardinality: '1..1', value: 'MANU'

    #SHALL contain exactly one [1..1] templateId (CONF:7409) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:10506).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.23'

    #MAY contain zero or more [0..*] id (CONF:7410).
    constraint 'id', cardinality: '0..*'

    #SHALL contain exactly one [1..1] manufacturedMaterial (CONF:7411).
    constraint 'manufacturedMaterial', cardinality: '1..1'

    #This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug Name Value Set 2.16.840.1.113883.3.88.12.80.17 DYNAMIC (CONF:7412).
    constraint 'manufacturedMaterial.code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:7413).
    constraint 'manufacturedMaterial.code.originalText', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:15986).
    constraint 'manufacturedMaterial.code.originalText.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15987).
    constraint 'manufacturedMaterial.code.originalText.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'manufacturedMaterial.code.originalText.reference.value'

    #This code MAY contain zero or more [0..*] translation (CONF:7414).
    constraint 'manufacturedMaterial.code.translation', cardinality: '0..*'

    #Translations can be used to represent generic product name, packaged product code, etc.
    constraint 'manufacturedMaterial.code.translation'

    #MAY contain zero or one [0..1] manufacturerOrganization (CONF:7416).
    constraint 'manufacturerOrganization', cardinality: '0..1'
  end
end
