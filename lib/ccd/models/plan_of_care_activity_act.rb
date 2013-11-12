module Ccd
  class PlanOfCareActivityAct < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8538).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"ACT", :code_system=>"2.16.840.1.113883.5.6"}}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:8539).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:8544) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.39" (CONF:10510).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.39"}

    # SHALL contain at least one [1..*] id (CONF:8546).
    constraint 'id', {:cardinality=>"1..*"}

    Ccd.load_extension('plan_of_care_activity_act.rb')
  end
end
