module Ccd
  class HospitalDischargeDiagnosis < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7663).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7664).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:16764) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.33" (CONF:16765).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.33"}

    # SHALL contain exactly one [1..1] code (CONF:19147).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"11535-2", :display_name=>"Hospital discharge diagnosis", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain at least one [1..*] entryRelationship (CONF:7666) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7667).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"SUBJ"}

    # SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:15536).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('hospital_discharge_diagnosis.rb')
  end
end
