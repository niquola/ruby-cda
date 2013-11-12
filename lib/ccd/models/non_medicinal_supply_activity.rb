module Ccd
  class NonMedicinalSupplyActivity < ::Cda::Supply
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8745).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"SPLY", :code_system=>"2.16.840.1.113883.5.6"}}

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:8746).
    constraint 'mood_code', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] templateId (CONF:8747) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.50" (CONF:10509).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.50"}

    #SHALL contain at least one [1..*] id (CONF:8748).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] statusCode (CONF:8749).
    constraint 'status_code', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:15498).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #The effectiveTime, if present, SHOULD contain zero or one [0..1] high.
    constraint 'effective_time', {}

    #SHOULD contain zero or one [0..1] quantity (CONF:8751).
    constraint 'quantity', {:cardinality=>"0..1"}

    #MAY contain zero or one [0..1] participant (CONF:8752) such that it
    constraint 'participant', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] @typeCode="PRD" Product (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8754).
    constraint 'participant.type_code', {:cardinality=>"1..1", :value=>{:code=>"PRD", :display_name=>"Product", :code_system=>"2.16.840.1.113883.5.90", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] Product Instance (templateId:2.16.840.1.113883.10.20.22.4.37) (CONF:15900).
    constraint 'participant.participant_role', {:cardinality=>"1..1"}

    Ccd.load_extension('non_medicinal_supply_activity.rb')
  end
end
