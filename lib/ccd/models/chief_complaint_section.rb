module Ccd
  class ChiefComplaintSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7832) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1" (CONF:10453).
    constraint 'templateId.root', cardinality: '1..1', value: '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1'

    #SHALL contain exactly one [1..1] code (CONF:15451).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10154-3" Chief Complaint (CONF:15452).
    constraint 'code.code', cardinality: '1..1', value: '10154-3'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26474).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:7834).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7835).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('chief_complaint_section.rb')
  end
end
