module Ccd
  class ProcedureActivityAct < ::Cda::Act
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8289).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"ACT", :display_name=>"Act", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:8290).
    constraint 'mood_code', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] templateId (CONF:8291) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.12" (CONF:10519).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.12"}

    #SHALL contain at least one [1..*] id (CONF:8292).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code (CONF:8293).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHOULD contain zero or one [0..1] originalText (CONF:19186).
    constraint 'code.original_text', {:cardinality=>"0..1"}

    #The originalText, if present, MAY contain zero or one [0..1] reference (CONF:19187).
    constraint 'code.original_text.reference', {:cardinality=>"0..1"}

    #The reference, if present, MAY contain zero or one [0..1] @value (CONF:19188).
    constraint 'code.original_text.reference.value', {:cardinality=>"0..1"}

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'code.original_text.reference.value', {}

    #This code in a procedure activity act SHOULD be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96).
    constraint 'code', {}

    #SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureAct statusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:8298).
    constraint 'status_code', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:8299).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:8300).
    constraint 'priority_code', {:cardinality=>"0..1"}

    #SHOULD contain zero or more [0..*] performer (CONF:8301).
    constraint 'performer', {:cardinality=>"0..*"}

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:8302).
    constraint 'performer.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:8303).
    constraint 'performer.assigned_entity.id', {:cardinality=>"1..*"}

    #This assignedEntity SHALL contain exactly one [1..1] addr (CONF:8304).
    constraint 'performer.assigned_entity.addr', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:8305).
    constraint 'performer.assigned_entity.telecom', {:cardinality=>"1..1"}

    #This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:8306).
    constraint 'performer.assigned_entity.represented_organization', {:cardinality=>"0..1"}

    #The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:8307).
    constraint 'performer.assigned_entity.represented_organization.id', {:cardinality=>"0..*"}

    #The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:8308).
    constraint 'performer.assigned_entity.represented_organization.name', {:cardinality=>"0..*"}

    #The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:8310).
    constraint 'performer.assigned_entity.represented_organization.telecom', {:cardinality=>"1..1"}

    #The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:8309).
    constraint 'performer.assigned_entity.represented_organization.addr', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] participant (CONF:8311).
    constraint 'participant', {:cardinality=>"0..*"}

    #The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8312).
    constraint 'participant.type_code', {:cardinality=>"1..1", :value=>{:code=>"LOC", :display_name=>"Location", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (templateId:2.16.840.1.113883.10.20.22.4.32) (CONF:15599).
    constraint 'participant.participant_role', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:8314) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8315).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"COMP", :display_name=>"Has Component", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8316).
    constraint 'entry_relationship.inversion_ind', {:cardinality=>"1..1", :value=>{:code=>"true", :display_name=>"true"}}

    #SHALL contain exactly one [1..1] encounter (CONF:8317).
    constraint 'entry_relationship.encounter', {:cardinality=>"1..1"}

    #This encounter SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8318).
    constraint 'entry_relationship.encounter.class_code', {:cardinality=>"1..1", :value=>{:code=>"ENC", :display_name=>"Encounter", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    #This encounter SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8319).
    constraint 'entry_relationship.encounter.mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    #This encounter SHALL contain exactly one [1..1] id (CONF:8320).
    constraint 'entry_relationship.encounter.id', {:cardinality=>"1..1"}

    #Set the encounter ID to the ID of an encounter in another section to signify they are the same encounter.
    constraint 'entry_relationship.encounter.id', {}

    #MAY contain zero or one [0..1] entryRelationship (CONF:8322) such that it
    constraint 'entry_relationship', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8323).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"SUBJ", :display_name=>"Has Subject", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8324).
    constraint 'entry_relationship.inversion_ind', {:cardinality=>"1..1", :value=>{:code=>"true", :display_name=>"true"}}

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:15600).
    constraint 'entry_relationship.act', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:8326) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8327).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"RSON", :display_name=>"Has Reason", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:15601).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:8329) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8330).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"COMP", :display_name=>"Has Component", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15602).
    constraint 'entry_relationship.substance_administration', {:cardinality=>"1..1"}

    Ccd.load_extension('procedure_activity_act.rb')
  end
end
