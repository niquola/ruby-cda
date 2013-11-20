module Ccd
  class FunctionalStatusResultObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:13905).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:13906).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:13889) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.67" (CONF:13890).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.67"}

    # SHALL contain at least one [1..*] id (CONF:13907).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:13908).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from CodeSystem LOINC (2.16.840.1.113883.6.1) STATIC (CONF:26448).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:13929).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # Represents clinically effective time of the measurement, which may be when the measurement was performed (e.g., a BP measurement), or may be when sample was taken (and measured some time afterwards)
    # SHALL contain exactly one [1..1] effectiveTime (CONF:13930).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value (CONF:13932).
    constraint 'value', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('functional_status_result_observation.rb')
  end
end
