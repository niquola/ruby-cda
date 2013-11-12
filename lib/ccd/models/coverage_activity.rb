module Ccd
  class CoverageActivity < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8872).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"ACT", :display_name=>"Act", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8873).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:8897) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.60" (CONF:10492).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.60"}

    # SHALL contain at least one [1..*] id (CONF:8874).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:8876).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="48768-6" Payment sources (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19160).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"48768-6", :display_name=>"Payment sources", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:8875).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19094).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain at least one [1..*] entryRelationship (CONF:8878) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8879).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"COMP", :display_name=>"has component", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] Policy Activity (templateId:2.16.840.1.113883.10.20.22.4.61) (CONF:15528).
    constraint 'entry_relationship.act', {:cardinality=>"1..1"}

    Ccd.load_extension('coverage_activity.rb')
  end
end
