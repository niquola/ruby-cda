module Ccd
  class MedicationDispense < ::Cda::Supply
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7451).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"SPLY", :code_system=>"2.16.840.1.113883.5.6"}}

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7452).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :code_system=>"2.16.840.1.113883.5.1001"}}

    #SHALL contain exactly one [1..1] templateId (CONF:7453) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.18" (CONF:10505).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.18"}

    #SHALL contain at least one [1..*] id (CONF:7454).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet Medication Fill Status 2.16.840.1.113883.3.88.12.80.64 DYNAMIC (CONF:7455).
    constraint 'status_code', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:7456).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #SHOULD contain zero or one [0..1] repeatNumber (CONF:7457).
    constraint 'repeat_number', {:cardinality=>"0..1"}

    #In "EVN" (event) mood, the repeatNumber is the number of occurrences. For example, a repeatNumber of "3" in a dispense act means that the current dispensation is the 3rd.
    constraint 'repeat_number', {}

    #SHOULD contain zero or one [0..1] quantity (CONF:7458).
    constraint 'quantity', {:cardinality=>"0..1"}

    #MAY contain zero or one [0..1] product (CONF:7459) such that it
    constraint 'product', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] Medication Information (templateId:2.16.840.1.113883.10.20.22.4.23) (CONF:15607).
    constraint 'product.manufactured_product', {:cardinality=>"1..1"}

    #MAY contain zero or one [0..1] product (CONF:9331) such that it
    constraint 'product', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] Immunization Medication Information (templateId:2.16.840.1.113883.10.20.22.4.54) (CONF:15608).
    constraint 'product.manufactured_product', {:cardinality=>"1..1"}

    #MAY contain zero or one [0..1] performer (CONF:7461).
    constraint 'performer', {:cardinality=>"0..1"}

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:7467).
    constraint 'performer.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHOULD contain zero or one [0..1] addr (CONF:7468).
    constraint 'performer.assigned_entity.addr', {:cardinality=>"0..1"}

    #	The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'performer.assigned_entity.addr', {}

    #MAY contain zero or one [0..1] entryRelationship (CONF:7473) such that it
    constraint 'entry_relationship', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] @typeCode="REFR" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7474).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"REFR", :code_system=>"2.16.840.1.113883.5.1002"}}

    #SHALL contain exactly one [1..1] Medication Supply Order (templateId:2.16.840.1.113883.10.20.22.4.17) (CONF:15606).
    constraint 'entry_relationship.supply', {:cardinality=>"1..1"}

    #A supply act SHALL contain one product/Medication Information or one product/Immunization Medication Information template
    constraint '', {}

    Ccd.load_extension('medication_dispense.rb')
  end
end
