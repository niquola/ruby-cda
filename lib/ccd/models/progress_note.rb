module Ccd
  class ProgressNote < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7588) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.9" (CONF:10052).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.9"}

    # SHALL contain exactly one [1..1] code (CONF:17189).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProgressNoteDocumentTypeCode 2.16.840.1.113883.11.20.8.1 DYNAMIC (CONF:17190).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] componentOf (CONF:7595).
    constraint 'component_of', {:cardinality=>"1..1"}

    # This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:7596).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain at least one [1..*] id (CONF:7597).
    constraint 'component_of.encompassing_encounter.id', {:cardinality=>"1..*"}

    # This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:7598).
    constraint 'component_of.encompassing_encounter.effective_time', {:cardinality=>"1..1"}

    # This effectiveTime SHALL contain exactly one [1..1] low (CONF:7599).
    constraint 'component_of.encompassing_encounter.effective_time.low', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] location/healthCareFacility/id (CONF:7611).
    constraint 'component_of.encompassing_encounter.location.health_care_facility.id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:9591).
    constraint 'component', {:cardinality=>"1..1"}

    Ccd.load_extension('progress_note.rb')
  end
end
