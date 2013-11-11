module Ccd
  class SeverityObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7345).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7346).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:7347) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.8" (CONF:10525).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.8"}

    #SHALL contain exactly one [1..1] code (CONF:19168).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="SEV" (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:19169).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"SEV"}

    #SHOULD contain zero or one [0..1] text (CONF:7350).
    constraint 'text', {:cardinality=>"0..1"}

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15928).
    constraint 'text.reference', {:cardinality=>"0..1"}

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15929).
    constraint 'text.reference.value', {:cardinality=>"0..1"}

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value', {}

    #SHALL contain exactly one [1..1] statusCode (CONF:7352).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19115).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>"completed"}

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem Severity 2.16.840.1.113883.3.88.12.3221.6.8 DYNAMIC (CONF:7356).
    constraint 'value', {:cardinality=>"1..1"}

    Ccd.load_extension('severity_observation.rb')
  end
end
