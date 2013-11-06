module Ccd
  class USRealmPatientNamePTNUSFIELDED < ::Cda::PN
    include Virtus.model
    extend ::Ccd::Dsl
    #MAY contain zero or one [0..1] @use, which SHALL be selected from ValueSet EntityNameUse 2.16.840.1.113883.1.11.15913 STATIC 2005-05-01 (CONF:7154).
    constraint 'use', cardinality: '0..1'

    #SHALL contain exactly one [1..1] family (CONF:7159).
    constraint 'family', cardinality: '1..1'

    #This family MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier 2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:7160).
    constraint 'family.qualifier', cardinality: '0..1'

    #SHALL contain at least one [1..*] given (CONF:7157).
    constraint 'given', cardinality: '1..*'

    #Such givens MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier 2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:7158).
    constraint 'given.qualifier', cardinality: '0..1'

    #The second occurrence of given (given[2]) if provided, SHALL include middle name or middle initial
    constraint 'given'

    #MAY contain zero or more [0..*] prefix (CONF:7155).
    constraint 'prefix', cardinality: '0..*'

    #The prefix, if present, MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier 2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:7156).
    constraint 'prefix.qualifier', cardinality: '0..1'

    #MAY contain zero or one [0..1] suffix (CONF:7161).
    constraint 'suffix', cardinality: '0..1'

    #The suffix, if present, MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier 2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:7162).
    constraint 'suffix.qualifier', cardinality: '0..1'

    #SHALL NOT have mixed content except for white space
    constraint ''

    Ccd.load_extension('us_realm_patient_name_ptnusfielded.rb')
  end
end
