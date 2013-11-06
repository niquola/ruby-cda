module Ccd
  class ProcedureSpecimensTakenSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8086) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.31" (CONF:10446).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.31'

    #SHALL contain exactly one [1..1] code (CONF:15421).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="59773-2" Procedure Specimens Taken (CONF:15422).
    constraint 'code.code', cardinality: '1..1', value: '59773-2'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26493).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8088).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8089).
    constraint 'text', cardinality: '1..1'

    #The Procedure Specimens Taken section SHALL list all specimens removed or SHALL explicitly state that no specimens were taken
    constraint ''

    Ccd.load_extension('ProcedureSpecimensTakenSection')
  end
end
