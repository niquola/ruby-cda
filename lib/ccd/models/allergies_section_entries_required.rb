module Ccd
  class AllergiesSectionEntriesRequired < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7527) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.6.1" (CONF:10379).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.6.1'

    #SHALL contain exactly one [1..1] code (CONF:15349).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="48765-2" Allergies, adverse reactions, alerts (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15350).
    constraint 'code.code', cardinality: '1..1', value: '48765-2'

    #SHALL contain exactly one [1..1] title (CONF:7534).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7530).
    constraint 'text', cardinality: '1..1'

    #SHALL contain at least one [1..*] entry (CONF:7531) such that it
    constraint 'entry', cardinality: '1..*'

    #SHALL contain exactly one [1..1] Allergy Problem Act (templateId:2.16.840.1.113883.10.20.22.4.30) (CONF:15446).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('allergies_section_entries_required.rb')
  end
end
