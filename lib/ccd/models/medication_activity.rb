module Ccd
  class MedicationActivity < ::Cda::SubstanceAdministration
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7496).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"SBADM"}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:7497).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:7499) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.16" (CONF:10504).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.16"}

    # SHALL contain at least one [1..*] id (CONF:7500).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] statusCode (CONF:7507).
    constraint 'status_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:7508) such that it
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] low (CONF:7511).
    constraint 'effective_time.low', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] high (CONF:7512).
    constraint 'effective_time.high', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] consumable (CONF:7520).
    constraint 'consumable', {:cardinality=>"1..1"}

    # This consumable SHALL contain exactly one [1..1] Medication Information (templateId:2.16.840.1.113883.10.20.22.4.23) (CONF:16085).
    constraint 'consumable.manufactured_product', {:cardinality=>"1..1"}

    Ccd.load_extension('medication_activity.rb')
  end
end
