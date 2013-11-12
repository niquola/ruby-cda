module Ccd
  class PlanOfCareActivitySubstanceAdmini < ::Cda::SubstanceAdministration
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8572).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"SBADM"}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) 2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:8573).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:8574) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.42" (CONF:10514).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.42"}

    # SHALL contain at least one [1..*] id (CONF:8575).
    constraint 'id', {:cardinality=>"1..*"}

    Ccd.load_extension('plan_of_care_activity_substance_admini.rb')
  end
end
