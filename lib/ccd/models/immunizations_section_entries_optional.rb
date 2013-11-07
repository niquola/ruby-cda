module Ccd
  class ImmunizationsSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7965) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.2" (CONF:10399).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.2'

    #SHALL contain exactly one [1..1] code (CONF:15367).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="11369-6" Immunizations (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15368).
    constraint 'code.code', cardinality: '1..1', value: '11369-6'

    #SHALL contain exactly one [1..1] title (CONF:7967).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7968).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:7969) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Immunization Activity (templateId:2.16.840.1.113883.10.20.22.4.52) (CONF:15494).
    constraint 'entry.substance_administration', cardinality: '1..1'

    Ccd.load_extension('immunizations_section_entries_optional.rb')
  end
end
