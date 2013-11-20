module Ccd
  class SubstanceOrDeviceAllergyIntolera < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:16303).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:16304).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:16305) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.24.3.90" (CONF:16306).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.24.3.90"}

    # SHALL contain at least one [1..*] id (CONF:16307).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:16345).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"ASSERTION", :display_name=>"Assertion", :code_system=>"2.16.840.1.113883.5.4"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:16308).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:16309).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:16312).
    constraint 'value', {:cardinality=>"1..1"}

    # This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Allergy/Adverse Event Type 2.16.840.1.113883.3.88.12.3221.6.2 DYNAMIC (CONF:16317).
    constraint 'value.code', {:cardinality=>"1..1"}

    Ccd.load_extension('substance_or_device_allergy_intolera.rb')
  end
end
