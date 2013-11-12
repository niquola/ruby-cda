module Ccd
  class DischargeSummary < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8463) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.8" (CONF:10044).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.8"}

    # SHALL contain exactly one [1..1] code (CONF:17178).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet DischargeSummaryDocumentTypeCode 2.16.840.1.113883.11.20.4.1 DYNAMIC (CONF:17179).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] componentOf (CONF:8471).
    constraint 'component_of', {:cardinality=>"1..1"}

    # This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:8472).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime/low (CONF:8473).
    constraint 'component_of.encompassing_encounter.effective_time.low', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime/high (CONF:8475).
    constraint 'component_of.encompassing_encounter.effective_time.high', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:9539).
    constraint 'component', {:cardinality=>"1..1"}

    Ccd.load_extension('discharge_summary.rb')
  end
end
