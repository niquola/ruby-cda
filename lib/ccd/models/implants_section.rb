module Ccd
  class ImplantsSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8042) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.33" (CONF:10401).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.33'

    #SHALL contain exactly one [1..1] code (CONF:15371).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="55122-6" Implants (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15372).
    constraint 'code.code', cardinality: '1..1', value: '55122-6'

    #This code SHALL contain zero or one [0..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26471).
    constraint 'code.code_system', cardinality: '0..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8044).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8045).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('implants_section.rb')
  end
end
