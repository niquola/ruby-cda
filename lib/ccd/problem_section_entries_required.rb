module Ccd
  class ProblemSectionEntriesRequired < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:9179) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5.1" (CONF:10441).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.5.1'

    #SHALL contain exactly one [1..1] code (CONF:15409).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15410).
    constraint 'code.code', cardinality: '1..1', value: '11450-4'

    #SHALL contain exactly one [1..1] title (CONF:9181).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:9182).
    constraint 'text', cardinality: '1..1'

    #SHALL contain at least one [1..*] entry (CONF:9183).
    constraint 'entry', cardinality: '1..*'

    #Such entries SHALL contain exactly one [1..1] Problem Concern Act (Condition) (templateId:2.16.840.1.113883.10.20.22.4.3) (CONF:15506).
    constraint 'entry.act', cardinality: '1..1'
  end
end
