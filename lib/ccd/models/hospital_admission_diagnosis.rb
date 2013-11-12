module Ccd
  class HospitalAdmissionDiagnosis < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7671).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"ACT", :code_system=>"2.16.840.1.113883.5.6"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7672).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :code_system=>"2.16.840.1.113883.5.1001"}}

    # SHALL contain exactly one [1..1] templateId (CONF:16747) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.34" (CONF:16748).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.34"}

    # SHALL contain exactly one [1..1] code (CONF:19145).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"46241-6", :display_name=>"Admission diagnosis", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain at least one [1..*] entryRelationship (CONF:7674) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7675).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"SUBJ", :display_name=>"Has Subject", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:15535).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('hospital_admission_diagnosis.rb')
  end
end
