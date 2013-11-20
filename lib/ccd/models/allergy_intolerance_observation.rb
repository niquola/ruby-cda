module Ccd
  class AllergyIntoleranceObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7379).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7380).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:7381) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.7" (CONF:10488).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.7"}

    # SHALL contain at least one [1..*] id (CONF:7382).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:15947).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"ASSERTION", :display_name=>"Assertion", :code_system=>"2.16.840.1.113883.5.4"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:19084).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:7387).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:7390).
    constraint 'value', {:cardinality=>"1..1"}

    # This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Allergy/Adverse Event Type 2.16.840.1.113883.3.88.12.3221.6.2 DYNAMIC (CONF:9139).
    constraint 'value.code', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('allergy_intolerance_observation.rb')
  end
end
