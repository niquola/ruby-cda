module Ccd
  class NumberOfPressureUlcersObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14705).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14706).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:14707) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.76" (CONF:14708).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.76"}

    # SHALL contain at least one [1..*] id (CONF:14709).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:14767).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="2264892003" number of pressure ulcers (CONF:14768).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"2264892003", :display_name=>"number of pressure ulcers"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:14714).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:14715).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value with @xsi:type="INT" (CONF:14771).
    constraint 'value', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] entryRelationship (CONF:14718).
    constraint 'entry_relationship', {:cardinality=>"1..1"}

    # This entryRelationship SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14719).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"SUBJ", :display_name=>"Has subject", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    # This entryRelationship SHALL contain exactly one [1..1] observation (CONF:14720).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    # This observation SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14721).
    constraint 'entry_relationship.observation.class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14722).
    constraint 'entry_relationship.observation.mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # This observation SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Pressure Ulcer Stage 2.16.840.1.113883.11.20.9.35 STATIC (CONF:14725).
    constraint 'entry_relationship.observation.value', {:cardinality=>"1..1"}

    Ccd.load_extension('number_of_pressure_ulcers_observation.rb')
  end
end
