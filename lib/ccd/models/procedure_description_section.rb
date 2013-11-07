module Ccd
  class ProcedureDescriptionSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8062) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.27" (CONF:10442).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.27'

    #SHALL contain exactly one [1..1] code (CONF:15411).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="29554-3" Procedure Description (CONF:15412).
    constraint 'code.code', cardinality: '1..1', value: '29554-3'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26489).
    constraint 'code.code_system', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8064).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8065).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('procedure_description_section.rb')
  end
end
