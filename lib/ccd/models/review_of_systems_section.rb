module Ccd
  class ReviewOfSystemsSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7812) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.3.18" (CONF:10469).
    constraint 'templateId.root', cardinality: '1..1', value: '1.3.6.1.4.1.19376.1.5.3.1.3.18'

    #SHALL contain exactly one [1..1] code (CONF:15435).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10187-3" Review of Systems (CONF:15436).
    constraint 'code.code', cardinality: '1..1', value: '10187-3'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26495).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:7814).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7815).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('review_of_systems_section.rb')
  end
end
