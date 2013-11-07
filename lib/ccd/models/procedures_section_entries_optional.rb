module Ccd
  class ProceduresSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:6270) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7" (CONF:6271).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.7'

    #SHALL contain exactly one [1..1] code (CONF:15423).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15424).
    constraint 'code.code', cardinality: '1..1', value: '47519-4'

    #SHALL contain exactly one [1..1] title (CONF:17184).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:6273).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:6274) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Procedure Activity Procedure (templateId:2.16.840.1.113883.10.20.22.4.14) (CONF:15509).
    constraint 'entry.procedure', cardinality: '1..1'

    #MAY contain zero or one [0..1] entry (CONF:6278) such that it
    constraint 'entry', cardinality: '0..1'

    #SHALL contain exactly one [1..1] Procedure Activity Observation (templateId:2.16.840.1.113883.10.20.22.4.13) (CONF:15510).
    constraint 'entry.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entry (CONF:8533) such that it
    constraint 'entry', cardinality: '0..1'

    #SHALL contain exactly one [1..1] Procedure Activity Act (templateId:2.16.840.1.113883.10.20.22.4.12) (CONF:15511).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('procedures_section_entries_optional.rb')
  end
end
