module Ccd
  class MedicationSupplyOrder < ::Cda::Supply
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7427).
    constraint 'classCode', cardinality: '1..1', value: 'SPLY'

    #SHALL contain exactly one [1..1] @moodCode="INT" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7428).
    constraint 'moodCode', cardinality: '1..1', value: 'INT'

    #SHALL contain exactly one [1..1] templateId (CONF:7429) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.17" (CONF:10507).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.17'

    #SHALL contain at least one [1..*] id (CONF:7430).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] statusCode (CONF:7432).
    constraint 'statusCode', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:15143) such that it
    constraint 'effectiveTime', cardinality: '0..1'

    #SHALL contain exactly one [1..1] high (CONF:15144).
    constraint 'effectiveTime.high', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] repeatNumber (CONF:7434).
    constraint 'repeatNumber', cardinality: '0..1'

    #In "INT" (intent) mood, the repeatNumber defines the number of allowed fills. For example, a repeatNumber of "3" means that the substance can be supplied up to 3 times (or, can be dispensed, with 2 refills).
    constraint 'repeatNumber'

    #SHOULD contain zero or one [0..1] quantity (CONF:7436).
    constraint 'quantity', cardinality: '0..1'

    #MAY contain zero or one [0..1] product (CONF:7439) such that it
    constraint 'product', cardinality: '0..1'

    #SHALL contain exactly one [1..1] Medication Information (templateId:2.16.840.1.113883.10.20.22.4.23) (CONF:16093).
    constraint 'product.manufacturedProduct', cardinality: '1..1'

    #MAY contain zero or one [0..1] product (CONF:9334) such that it
    constraint 'product', cardinality: '0..1'

    #SHALL contain exactly one [1..1] Immunization Medication Information (templateId:2.16.840.1.113883.10.20.22.4.54) (CONF:16094).
    constraint 'product.manufacturedProduct', cardinality: '1..1'

    #A supply act SHALL contain one product/Medication Information or one product/Immunization Medication Information template
    constraint 'product.manufacturedProduct'

    #MAY contain zero or one [0..1] author (CONF:7438).
    constraint 'author', cardinality: '0..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7442).
    constraint 'entryRelationship', cardinality: '0..1'

    #The entryRelationship, if present, SHALL contain exactly one [1..1] @typeCode="SUBJ" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7444).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #The entryRelationship, if present, SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7445).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #The entryRelationship, if present, SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:16095).
    constraint 'entryRelationship.act', cardinality: '1..1'
  end
end
