module Ccd
  class HistoryOfPresentIllnessSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7848) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.3.4" (CONF:10458).
    constraint 'templateId.root', cardinality: '1..1', value: '1.3.6.1.4.1.19376.1.5.3.1.3.4'

    #SHALL contain exactly one [1..1] code (CONF:15477).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10164-2" (CONF:15478).
    constraint 'code.code', cardinality: '1..1', value: '10164-2'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26478).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:7850).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7851).
    constraint 'text', cardinality: '1..1'
  end
end
