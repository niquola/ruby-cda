module Ccd
  class ContinuityOfCareDocumentCCD < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8450) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.2" (CONF:10038).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.2"}

    # SHALL contain exactly one [1..1] code (CONF:17180).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"34133-9", :display_name=>"Summarization of Episode Note", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain at least one [1..*] author (CONF:9442).
    constraint 'author', {:cardinality=>"1..*"}

    # Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:9443).
    constraint 'author.assigned_author', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] documentationOf (CONF:8452).
    constraint 'documentation_of', {:cardinality=>"1..1"}

    # This documentationOf SHALL contain exactly one [1..1] serviceEvent (CONF:8480).
    constraint 'documentation_of.service_event', {:cardinality=>"1..1"}

    # This serviceEvent SHALL contain exactly one [1..1] @classCode="PCPR" Care Provision (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8453).
    constraint 'documentation_of.service_event.class_code', {:cardinality=>"1..1", :value=>"PCPR"}

    # This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:8481).
    constraint 'documentation_of.service_event.effective_time', {:cardinality=>"1..1"}

    # This effectiveTime SHALL contain exactly one [1..1] low (CONF:8454).
    constraint 'documentation_of.service_event.effective_time.low', {:cardinality=>"1..1"}

    # This effectiveTime SHALL contain exactly one [1..1] high (CONF:8455).
    constraint 'documentation_of.service_event.effective_time.high', {:cardinality=>"1..1"}

    Ccd.load_extension('continuity_of_care_document_ccd.rb')
  end
end
