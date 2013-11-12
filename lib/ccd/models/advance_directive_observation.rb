module Ccd
  class AdvanceDirectiveObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8648).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"Observation", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8649).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:8655) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.48" (CONF:10485).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.48"}

    # SHALL contain at least one [1..*] id (CONF:8654).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet AdvanceDirectiveTypeCode 2.16.840.1.113883.1.11.20.2 STATIC 2006-10-17 (CONF:8651).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:8652).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19082).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:8656).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # This effectiveTime SHALL contain exactly one [1..1] high (CONF:15521).
    constraint 'effective_time.high', {:cardinality=>"1..1"}

    Ccd.load_extension('advance_directive_observation.rb')
  end
end
