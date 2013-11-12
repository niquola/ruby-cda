module Ccd
  class MedicationUseNoneKnownDeprecated < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7557).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :code_system=>"2.16.840.1.113883.5.6"}}

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7558).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :code_system=>"2.16.840.1.113883.5.1001"}}

    #SHALL contain exactly one [1..1] templateId (CONF:7559) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.29" (CONF:10508).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.29"}

    #SHALL contain at least one [1..*] id (CONF:7560).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code (CONF:19149).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:19150).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"ASSERTION", :display_name=>"Assertion", :code_system=>"2.16.840.1.113883.5.4", :_type=>"Cda::CV"}}

    #MAY contain zero or one [0..1] text (CONF:7565).
    constraint 'text', {:cardinality=>"0..1"}

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15580).
    constraint 'text.reference', {:cardinality=>"0..1"}

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15581).
    constraint 'text.reference.value', {:cardinality=>"0..1"}

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value', {}

    #SHALL contain exactly one [1..1] statusCode (CONF:7562).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19107).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:7563).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] value="182904002" Drug treatment unknown (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:7564).
    constraint 'value', {:cardinality=>"1..1", :value=>{:code=>"182904002", :display_name=>"Drug treatment unknown", :code_system=>"2.16.840.1.113883.6.96", :_type=>"Cda::CV"}}

    Ccd.load_extension('medication_use_none_known_deprecated.rb')
  end
end
