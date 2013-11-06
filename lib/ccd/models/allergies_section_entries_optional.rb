module Ccd
  class AllergiesSectionEntriesOptional < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7800) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.6" (CONF:10378).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.6'

    #SHALL contain exactly one [1..1] code (CONF:15345).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="48765-2" Allergies, adverse reactions, alerts (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15346).
    constraint 'code.code', cardinality: '1..1', value: '48765-2'

    #SHALL contain exactly one [1..1] title (CONF:7802).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7803).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:7804) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Allergy Problem Act (templateId:2.16.840.1.113883.10.20.22.4.30) (CONF:15444).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('AllergiesSectionEntriesOptional')
  end
end
