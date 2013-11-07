module Ccd
  class ComplicationsSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8174) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.37" (CONF:10384).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.37'

    #SHALL contain exactly one [1..1] code (CONF:15453).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="55109-3" Complications (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15454).
    constraint 'code.code', cardinality: '1..1', value: '55109-3'

    #SHALL contain exactly one [1..1] title (CONF:8176).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8177).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8795) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:15455).
    constraint 'entry.observation', cardinality: '1..1'

    #There SHALL be a statement providing details of the complication(s) or it SHALL explicitly state there were no complications.
    constraint ''

    Ccd.load_extension('complications_section.rb')
  end
end
