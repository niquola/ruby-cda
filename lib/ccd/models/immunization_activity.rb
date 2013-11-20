module Ccd
  class ImmunizationActivity < ::Cda::SubstanceAdministration
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8826).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"SBADM"}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC (CONF:8827).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # Use negationInd="true" to indicate that the immunization was not given.
    # SHALL contain exactly one [1..1] @negationInd (CONF:8985).
    constraint 'negation_ind', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:8828) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.52" (CONF:10498).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.52"}

    # SHALL contain at least one [1..*] id (CONF:8829).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] statusCode (CONF:8833).
    constraint 'status_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:8834).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] consumable (CONF:8847).
    constraint 'consumable', {:cardinality=>"1..1"}

    # This consumable SHALL contain exactly one [1..1] Immunization Medication Information (templateId:2.16.840.1.113883.10.20.22.4.54) (CONF:15546).
    constraint 'consumable.manufactured_product', {:cardinality=>"1..1"}

    def self.template_type
      "substanceAdministration"
    end

    Ccd.load_extension('immunization_activity.rb')
  end
end
