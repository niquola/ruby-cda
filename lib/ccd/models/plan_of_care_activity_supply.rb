module Ccd
  class PlanOfCareActivitySupply < ::Cda::Supply
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8577).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"SPLY", :code_system=>"2.16.840.1.113883.5.6"}}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) 2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:8578).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:8579) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.43" (CONF:10515).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.43"}

    # SHALL contain at least one [1..*] id (CONF:8580).
    constraint 'id', {:cardinality=>"1..*"}

    Ccd.load_extension('plan_of_care_activity_supply.rb')
  end
end
