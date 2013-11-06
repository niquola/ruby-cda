module Ccd
  class ReasonForVisitSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7836) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.12" (CONF:10448).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.12'

    #SHALL contain exactly one [1..1] code (CONF:15429).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="29299-5" Reason for Visit (CONF:15430).
    constraint 'code.code', cardinality: '1..1', value: '29299-5'

    #This code SHALL contain exactly one [1..1] @codeSystem (CONF:26494).
    constraint 'code.codeSystem', cardinality: '1..1'

    #SHALL contain exactly one [1..1] title (CONF:7838).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7839).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('ReasonForVisitSection')
  end
end
