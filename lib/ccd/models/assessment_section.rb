module Ccd
  class AssessmentSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7711) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.8" (CONF:10382).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.8'

    #SHALL contain exactly one [1..1] code (CONF:14757).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="51848-0" Assessments (CONF:14758).
    constraint 'code.code', cardinality: '1..1', value: '51848-0'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26472).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:16774).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7713).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('AssessmentSection')
  end
end
