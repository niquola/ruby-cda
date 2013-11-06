module Ccd
  class CommentActivity < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9425).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9426).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:9427) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.64" (CONF:10491).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.64'

    #SHALL contain exactly one [1..1] code (CONF:9428).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="48767-8" Annotation Comment (CONF:19159).
    constraint 'code.code', cardinality: '1..1', value: '48767-8'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26501).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] text (CONF:9430).
    constraint 'text', cardinality: '1..1'

    #This text SHALL contain exactly one [1..1] reference (CONF:15967).
    constraint 'text.reference', cardinality: '1..1'

    #This reference SHALL contain exactly one [1..1] @value (CONF:15968).
    constraint 'text.reference.value', cardinality: '1..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #This text SHALL contain exactly one [1..1] reference/@value (CONF:9431).
    constraint 'text.reference/value', cardinality: '1..1'

    #MAY contain zero or one [0..1] author (CONF:9433).
    constraint 'author', cardinality: '0..1'

    #The author, if present, SHALL contain exactly one [1..1] time (CONF:9434).
    constraint 'author.time', cardinality: '1..1'

    #The author, if present, SHALL contain exactly one [1..1] assignedAuthor (CONF:9435).
    constraint 'author.assignedAuthor', cardinality: '1..1'

    #This assignedAuthor SHALL contain exactly one [1..1] id (CONF:9436).
    constraint 'author.assignedAuthor.id', cardinality: '1..1'

    #This assignedAuthor SHALL contain exactly one [1..1] addr (CONF:9437).
    constraint 'author.assignedAuthor.addr', cardinality: '1..1'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'author.assignedAuthor.addr'

    #SHALL include assignedPerson/name or representedOrganization/name
    constraint 'author.assignedAuthor'

    #An  assignedPerson/name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'author.assignedAuthor'

    #	Data elements defined elsewhere in the specification SHALL NOT be recorded using the Comment Activity
    constraint ''

    Ccd.load_extension('CommentActivity')
  end
end
