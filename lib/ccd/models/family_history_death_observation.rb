module Ccd
  class FamilyHistoryDeathObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8621).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"Observation", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8622).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:8623) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.47" (CONF:10495).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.47"}

    # SHALL contain exactly one [1..1] code (CONF:19141).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:19142).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"ASSERTION", :display_name=>"Assertion"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: ActCode 2.16.840.1.113883.5.4) (CONF:26504).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.5.4", :display_name=>"", :code_system=>"2.16.840.1.113883.5.4", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:8625).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19097).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:8626).
    constraint 'value', {:cardinality=>"1..1"}

    # This value SHALL contain exactly one [1..1] @code="419099009" Dead (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:26470).
    constraint 'value.code', {:cardinality=>"1..1", :value=>{:code=>"419099009", :display_name=>"Dead", :code_system=>"2.16.840.1.113883.6.96", :_type=>"Cda::CV"}}

    Ccd.load_extension('family_history_death_observation.rb')
  end
end
