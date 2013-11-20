module Ccd
  class ResultOrganizer < ::Cda::Organizer
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7121).
    constraint 'class_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7122).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:7126) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.1" (CONF:9134).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.1"}

    # SHALL contain at least one [1..*] id (CONF:7127).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:7128).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:7123).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC (CONF:14848).
    constraint 'status_code.code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] component (CONF:7124) such that it
    constraint 'component', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] Result Observation (templateId:2.16.840.1.113883.10.20.22.4.2) (CONF:14850).
    constraint 'component.observation', {:cardinality=>"1..1"}

    def self.template_type
      "organizer"
    end

    Ccd.load_extension('result_organizer.rb')
  end
end
