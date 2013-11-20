module Ccd
  class VitalSignObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7297).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7298).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:7299) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.27" (CONF:10527).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.27"}

    # SHALL contain at least one [1..*] id (CONF:7300).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result 2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:7301).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:7303).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:7304).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:7305).
    constraint 'value', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('vital_sign_observation.rb')
  end
end
