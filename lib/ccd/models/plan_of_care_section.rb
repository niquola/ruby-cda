module Ccd
  class PlanOfCareSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7723) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.10" (CONF:10435).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.10'

    #SHALL contain exactly one [1..1] code (CONF:14749).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="18776-5" Plan of Care (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:14750).
    constraint 'code.code', cardinality: '1..1', value: '18776-5'

    #SHALL contain exactly one [1..1] title (CONF:16986).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7725).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:7726) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Act (templateId:2.16.840.1.113883.10.20.22.4.39) (CONF:14751).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8805) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Encounter (templateId:2.16.840.1.113883.10.20.22.4.40) (CONF:14752).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8807) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Observation (templateId:2.16.840.1.113883.10.20.22.4.44) (CONF:14753).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8809) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Procedure (templateId:2.16.840.1.113883.10.20.22.4.41) (CONF:14754).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8811) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Substance Administration (templateId:2.16.840.1.113883.10.20.22.4.42) (CONF:14755).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:8813) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Supply (templateId:2.16.840.1.113883.10.20.22.4.43) (CONF:14756).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:14695) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:16751).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('plan_of_care_section.rb')
  end
end
