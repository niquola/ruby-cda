module Ccd
  class MedicationUseNoneKnownDeprecated < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7557).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :code_system=>"2.16.840.1.113883.5.6"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7558).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :code_system=>"2.16.840.1.113883.5.1001"}}

    # SHALL contain exactly one [1..1] templateId (CONF:7559) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.29" (CONF:10508).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.29"}

    # SHALL contain at least one [1..*] id (CONF:7560).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:19149).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"ASSERTION", :display_name=>"Assertion", :code_system=>"2.16.840.1.113883.5.4", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:7562).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] value="182904002" Drug treatment unknown (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:7564).
    constraint 'value', {:cardinality=>"1..1", :value=>{:code=>"182904002", :display_name=>"Drug treatment unknown", :code_system=>"2.16.840.1.113883.6.96", :_type=>"Cda::CV"}}

    Ccd.load_extension('medication_use_none_known_deprecated.rb')
  end
end
