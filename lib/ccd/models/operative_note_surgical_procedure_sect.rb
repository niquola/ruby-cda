module Ccd
  class OperativeNoteSurgicalProcedureSect < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8034) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.7.14" (CONF:10464).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.7.14'

    #SHALL contain exactly one [1..1] code (CONF:15393).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10223-6" Operative Note Surgical Procedure (CONF:15394).
    constraint 'code.code', cardinality: '1..1', value: '10223-6'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26487).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8036).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8037).
    constraint 'text', cardinality: '1..1'

    #  If the surgical procedure section is present there SHALL be text indicating the procedure performed.
    constraint ''

    Ccd.load_extension('operative_note_surgical_procedure_sect.rb')
  end
end
