module Ccd
  class AssessmentScaleObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14434).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14435).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:14436) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.69" (CONF:14437).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.69"}

    # SHALL contain at least one [1..*] id (CONF:14438).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:14439).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:14444).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # Represents clinically effective time of the measurement, which may be when the measurement was performed (e.g., a BP measurement), or may be when sample was taken (and measured some time afterwards)
    # SHALL contain exactly one [1..1] effectiveTime (CONF:14445).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value (CONF:14450).
    constraint 'value', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('assessment_scale_observation.rb')
  end
end
