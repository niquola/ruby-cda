module Ccd
  class AdvanceDirectivesSectionEntriesOpt < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7928) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.21" (CONF:10376).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.21'

    #SHALL contain exactly one [1..1] code (CONF:15340).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="42348-3" Advance Directives (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15342).
    constraint 'code.code', cardinality: '1..1', value: '42348-3'

    #SHALL contain exactly one [1..1] title (CONF:7930).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7931).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:7957) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Advance Directive Observation (templateId:2.16.840.1.113883.10.20.22.4.48) (CONF:15443).
    constraint 'entry.observation', cardinality: '1..1'
  end
end
