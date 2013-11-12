module Ccd
  class PreoperativeDiagnosis < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" (CONF:10090).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:10091).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:16770) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.65" (CONF:16771).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.65"}

    # SHALL contain exactly one [1..1] code (CONF:19155).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="10219-4" Preoperative Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19156).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"10219-4", :display_name=>"Preoperative Diagnosis", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain at least one [1..*] entryRelationship (CONF:10093).
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # Such entryRelationships SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:10094).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"SUBJ", :display_name=>"Has subject", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    # Such entryRelationships SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:15605).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('preoperative_diagnosis.rb')
  end
end
