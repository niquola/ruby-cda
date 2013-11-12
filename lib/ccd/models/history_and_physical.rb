module Ccd
  class HistoryAndPhysical < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8283) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.3" (CONF:10046).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.3"}

    # SHALL contain exactly one [1..1] code (CONF:17185).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet HPDocumentType 2.16.840.1.113883.1.11.20.22 DYNAMIC (CONF:17186).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] componentOf (CONF:8338).
    constraint 'component_of', {:cardinality=>"1..1"}

    # This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:8339).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] id (CONF:8340).
    constraint 'component_of.encompassing_encounter.id', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:8341).
    constraint 'component_of.encompassing_encounter.effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:8349).
    constraint 'component', {:cardinality=>"1..1"}

    Ccd.load_extension('history_and_physical.rb')
  end
end
