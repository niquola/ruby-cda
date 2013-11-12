module Ccd
  class HealthStatusObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9057).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"Observation", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9072).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:16756) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.5" (CONF:16757).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.5"}

    # SHALL contain exactly one [1..1] code (CONF:19143).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="11323-3" Health status (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19144).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"11323-3", :display_name=>"Health status", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:9074).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19103).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet HealthStatus 2.16.840.1.113883.1.11.20.12 DYNAMIC (CONF:9075).
    constraint 'value', {:cardinality=>"1..1"}

    Ccd.load_extension('health_status_observation.rb')
  end
end
