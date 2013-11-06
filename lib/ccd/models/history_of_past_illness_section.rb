module Ccd
  class HistoryOfPastIllnessSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7828) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.20" (CONF:10390).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.20'

    #SHALL contain exactly one [1..1] code (CONF:15474).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="11348-0" History of Past Illness (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15475).
    constraint 'code.code', cardinality: '1..1', value: '11348-0'

    #SHALL contain exactly one [1..1] title (CONF:7830).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7831).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8791) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:15476).
    constraint 'entry.observation', cardinality: '1..1'

    Ccd.load_extension('history_of_past_illness_section.rb')
  end
end