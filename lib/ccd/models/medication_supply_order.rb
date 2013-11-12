module Ccd
  class MedicationSupplyOrder < ::Cda::Supply
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7427).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"SPLY", :code_system=>"2.16.840.1.113883.5.6"}}

    #SHALL contain exactly one [1..1] @moodCode="INT" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7428).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"INT", :code_system=>"2.16.840.1.113883.5.1001"}}

    #SHALL contain exactly one [1..1] templateId (CONF:7429) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.17" (CONF:10507).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.17"}

    #SHALL contain at least one [1..*] id (CONF:7430).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] statusCode (CONF:7432).
    constraint 'status_code', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:15143) such that it
    constraint 'effective_time', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] high (CONF:15144).
    constraint 'effective_time.high', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] repeatNumber (CONF:7434).
    constraint 'repeat_number', {:cardinality=>"0..1"}

    #In "INT" (intent) mood, the repeatNumber defines the number of allowed fills. For example, a repeatNumber of "3" means that the substance can be supplied up to 3 times (or, can be dispensed, with 2 refills).
    constraint 'repeat_number', {}

    #SHOULD contain zero or one [0..1] quantity (CONF:7436).
    constraint 'quantity', {:cardinality=>"0..1"}

    #MAY contain zero or one [0..1] product (CONF:7439) such that it
    constraint 'product', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] Medication Information (templateId:2.16.840.1.113883.10.20.22.4.23) (CONF:16093).
    constraint 'product.manufactured_product', {:cardinality=>"1..1"}

    #MAY contain zero or one [0..1] product (CONF:9334) such that it
    constraint 'product', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] Immunization Medication Information (templateId:2.16.840.1.113883.10.20.22.4.54) (CONF:16094).
    constraint 'product.manufactured_product', {:cardinality=>"1..1"}

    #A supply act SHALL contain one product/Medication Information or one product/Immunization Medication Information template
    constraint 'product.manufactured_product', {}

    #MAY contain zero or one [0..1] author (CONF:7438).
    constraint 'author', {:cardinality=>"0..1"}

    #MAY contain zero or one [0..1] entryRelationship (CONF:7442).
    constraint 'entry_relationship', {:cardinality=>"0..1"}

    #The entryRelationship, if present, SHALL contain exactly one [1..1] @typeCode="SUBJ" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7444).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"SUBJ", :code_system=>"2.16.840.1.113883.5.1002"}}

    #The entryRelationship, if present, SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7445).
    constraint 'entry_relationship.inversion_ind', {:cardinality=>"1..1", :value=>{:code=>"true", :display_name=>"True"}}

    #The entryRelationship, if present, SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:16095).
    constraint 'entry_relationship.act', {:cardinality=>"1..1"}

    Ccd.load_extension('medication_supply_order.rb')
  end
end
