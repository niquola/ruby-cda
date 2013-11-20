module Ccd
  class PlanOfCareActivityEncounter < ::Cda::Encounter
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="ENC" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8564).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ENC"}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:8565).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:8566) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.40" (CONF:10511).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.40"}

    # SHALL contain at least one [1..*] id (CONF:8567).
    constraint 'id', {:cardinality=>"1..*"}

    def self.template_type
      "encounter"
    end

    Ccd.load_extension('plan_of_care_activity_encounter.rb')
  end
end
