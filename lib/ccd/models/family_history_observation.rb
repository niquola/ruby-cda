module Ccd
  class FamilyHistoryObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8586).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8587).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:8599) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.46" (CONF:10496).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.46"}

    #SHALL contain at least one [1..*] id (CONF:8592).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2012-06-01 (CONF:8589).
    constraint 'code', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] statusCode (CONF:8590).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19098).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>"completed"}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:8593).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:8591).
    constraint 'value', {:cardinality=>"1..1"}

    #MAY contain zero or one [0..1] entryRelationship (CONF:8675) such that it
    constraint 'entry_relationship', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Subject (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8676).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"SUBJ"}

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:8677).
    constraint 'entry_relationship.inversion_ind', {:cardinality=>"1..1", :value=>"true"}

    #SHALL contain exactly one [1..1] Age Observation (templateId:2.16.840.1.113883.10.20.22.4.31) (CONF:15526).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    #MAY contain zero or one [0..1] entryRelationship (CONF:8678) such that it
    constraint 'entry_relationship', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] @typeCode="CAUS" Causal or Contributory (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8679).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"CAUS"}

    #SHALL contain exactly one [1..1] Family History Death Observation (templateId:2.16.840.1.113883.10.20.22.4.47) (CONF:15527).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('family_history_observation.rb')
  end
end
