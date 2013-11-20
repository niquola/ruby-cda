module Ccd
  class SeverityObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7345).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7346).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:7347) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.8" (CONF:10525).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.8"}

    # SHALL contain exactly one [1..1] code (CONF:19168).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"SEV", :display_name=>"", :code_system=>"2.16.840.1.113883.5.4"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:7352).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem Severity 2.16.840.1.113883.3.88.12.3221.6.8 DYNAMIC (CONF:7356).
    constraint 'value', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('severity_observation.rb')
  end
end
