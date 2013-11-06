module Ccd
  class ProcedureEstimatedBloodLossSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8074) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.18.2.9" (CONF:10467).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.18.2.9'

    #SHALL contain exactly one [1..1] code (CONF:15415).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="59770-8" Procedure Estimated Blood Loss (CONF:15416).
    constraint 'code.code', cardinality: '1..1', value: '59770-8'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26491).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8076).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8077).
    constraint 'text', cardinality: '1..1'

    #The Estimated Blood Loss section SHALL include a statement providing an estimate of the amount of blood lost during the procedure, even if the estimate is text, such as "minimal" or "none"
    constraint ''

    Ccd.load_extension('procedure_estimated_blood_loss_section.rb')
  end
end
