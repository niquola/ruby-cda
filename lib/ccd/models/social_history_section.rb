module Ccd
  class SocialHistorySection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7936) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.17" (CONF:10449).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.17'

    #SHALL contain exactly one [1..1] code (CONF:14819).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="29762-2" Social History (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:14820).
    constraint 'code.code', cardinality: '1..1', value: '29762-2'

    #SHALL contain exactly one [1..1] title (CONF:7938).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7939).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:7953) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Social History Observation (templateId:2.16.840.1.113883.10.20.22.4.38) (CONF:14821).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:9132) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Pregnancy Observation (templateId:2.16.840.1.113883.10.20.15.3.8) (CONF:14822).
    constraint 'entry.observation', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:14823) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Smoking Status Observation (templateId:2.16.840.1.113883.10.20.22.4.78) (CONF:14824).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:16816) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Tobacco Use (templateId:2.16.840.1.113883.10.20.22.4.85) (CONF:16817).
    constraint 'entry.observation', cardinality: '1..1'

    Ccd.load_extension('social_history_section.rb')
  end
end
