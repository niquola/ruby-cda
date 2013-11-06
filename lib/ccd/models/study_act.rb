module Ccd
  class StudyAct < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9207).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9208).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:9209) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.6" (CONF:10533).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.6'

    #SHALL contain at least one [1..*] id (CONF:9210).
    constraint 'id', cardinality: '1..*'

    #Such ids SHALL contain exactly one [1..1] @root (CONF:9213).
    constraint 'id.root', cardinality: '1..1'

    #Such ids SHALL NOT contain [0..0] @extension (CONF:9211).
    constraint 'id.extension', cardinality: '0..0'

    #SHALL contain exactly one [1..1] code (CONF:19172).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="113014" (CONF:19173).
    constraint 'code.code', cardinality: '1..1', value: '113014'

    #This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26506).
    constraint 'code.codeSystem', cardinality: '1..1', value: '1.2.840.10008.2.16.4'

    #MAY contain zero or one [0..1] text (CONF:9215).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15995).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15996).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9216).
    constraint 'effectiveTime', cardinality: '0..1'

    #SHALL contain at least one [1..*] entryRelationship (CONF:9219) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9220).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Series Act (templateId:2.16.840.1.113883.10.20.22.4.63) (CONF:15937).
    constraint 'entryRelationship.act', cardinality: '1..1'

    Ccd.load_extension('study_act.rb')
  end
end
