module Ccd
  class InstructionsSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:10112) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.45" (CONF:10402).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.45'

    #SHALL contain exactly one [1..1] code (CONF:15375).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="69730-0" Instructions (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15376).
    constraint 'code.code', cardinality: '1..1', value: '69730-0'

    #SHALL contain exactly one [1..1] title (CONF:10114).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:10115).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:10116).
    constraint 'entry', cardinality: '0..*'

    #The entry, if present, SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:15496).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('instructions_section.rb')
  end
end
