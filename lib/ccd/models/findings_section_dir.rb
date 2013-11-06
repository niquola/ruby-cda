module Ccd
  class FindingsSectionDIR < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8531) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.1.2" (CONF:10456).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.1.2'

    #This section SHOULD contain only the direct observations in the report, with topics such as Reason for Study, History, and Impression placed in separate sections.  However, in cases where the source of report content provides a single block of text not separated into these sections, that text SHALL be placed in the Findings section.
    constraint ''

    Ccd.load_extension('FindingsSectionDIR')
  end
end
