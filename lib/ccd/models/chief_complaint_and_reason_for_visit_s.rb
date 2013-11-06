module Ccd
  class ChiefComplaintAndReasonForVisitS < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7840) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.13" (CONF:10383).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.13'

    #SHALL contain exactly one [1..1] code (CONF:15449).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="46239-0" Chief Complaint and Reason for Visit (CONF:15450).
    constraint 'code.code', cardinality: '1..1', value: '46239-0'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26473).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:7842).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7843).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('chief_complaint_and_reason_for_visit_s.rb')
  end
end
