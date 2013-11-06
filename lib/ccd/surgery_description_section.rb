module Ccd
  class SurgeryDescriptionSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8022) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.26" (CONF:10450).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.26'

    #SHALL contain exactly one [1..1] code (CONF:15439).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="29554-3" Surgery Description (CONF:15440).
    constraint 'code.code', cardinality: '1..1', value: '29554-3'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26497).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8024).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8025).
    constraint 'text', cardinality: '1..1'
  end
end
