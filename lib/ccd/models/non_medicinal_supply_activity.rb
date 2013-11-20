module Ccd
  class NonMedicinalSupplyActivity < ::Cda::Supply
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8745).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"SPLY"}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:8746).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:8747) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.50" (CONF:10509).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.50"}

    # SHALL contain at least one [1..*] id (CONF:8748).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] statusCode (CONF:8749).
    constraint 'status_code', {:cardinality=>"1..1"}

    def self.template_type
      "supply"
    end

    Ccd.load_extension('non_medicinal_supply_activity.rb')
  end
end
