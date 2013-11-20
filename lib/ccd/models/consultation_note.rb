module Ccd
  class ConsultationNote < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:8375).
    constraint 'template_id', {:cardinality=>"1..1"}

    # This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.4" (CONF:10040).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.4"}

    # SHALL contain exactly one [1..1] code (CONF:17176).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ConsultDocumentType 2.16.840.1.113883.11.20.9.31 DYNAMIC (CONF:17177).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] inFulfillmentOf (CONF:8382).
    constraint 'in_fulfillment_of', {:cardinality=>"1..*"}

    # Such inFulfillmentOfs SHALL contain exactly one [1..1] order (CONF:8385).
    constraint 'in_fulfillment_of.order', {:cardinality=>"1..1"}

    # This order SHALL contain at least one [1..*] id (CONF:9102).
    constraint 'in_fulfillment_of.order.id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] componentOf (CONF:8386).
    constraint 'component_of', {:cardinality=>"1..1"}

    # This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:8387).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] id (CONF:8388).
    constraint 'component_of.encompassing_encounter.id', {:cardinality=>"1..1"}

    # This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:8389).
    constraint 'component_of.encompassing_encounter.effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:8397).
    constraint 'component', {:cardinality=>"1..1"}

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('consultation_note.rb')
  end
end
