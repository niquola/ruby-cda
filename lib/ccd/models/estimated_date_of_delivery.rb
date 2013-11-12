module Ccd
  class EstimatedDateOfDelivery < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:444).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"Observation", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:445).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:16762) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.15.3.1" (CONF:16763).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.15.3.1"}

    # SHALL contain exactly one [1..1] code (CONF:19139).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="11778-8" Estimated date of delivery (CONF:19140).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"11778-8", :display_name=>"Estimated date of delivery"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26503).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:448).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19096).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] value with @xsi:type="TS" (CONF:450).
    constraint 'value', {:cardinality=>"1..1"}

    Ccd.load_extension('estimated_date_of_delivery.rb')
  end
end
