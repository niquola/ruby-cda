module Ccd
  class SeriesAct < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9222).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9223).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:10918) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.63" (CONF:10919).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.63'

    #SHALL contain at least one [1..*] id (CONF:9224).
    constraint 'id', cardinality: '1..*'

    #Such ids SHALL contain exactly one [1..1] @root (CONF:9225).
    constraint 'id.root', cardinality: '1..1'

    #Such ids SHALL NOT contain [0..0] @extension (CONF:9226).
    constraint 'id.extension', cardinality: '0..0'

    #SHALL contain exactly one [1..1] code (CONF:19166).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="113015" (CONF:19167).
    constraint 'code.code', cardinality: '1..1', value: '113015'

    #This code MAY contain zero or one [0..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26461).
    constraint 'code.codeSystem', cardinality: '0..1', value: '1.2.840.10008.2.16.4'

    #This code SHALL contain exactly one [1..1] qualifier (CONF:26462).
    constraint 'code.qualifier', cardinality: '1..1'

    #This qualifier SHALL contain exactly one [1..1] name (CONF:26463).
    constraint 'code.qualifier.name', cardinality: '1..1'

    #This name SHALL contain exactly one [1..1] @code="121139" Modality (CONF:26464).
    constraint 'code.qualifier.name.code', cardinality: '1..1', value: '121139'

    #This name SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26465).
    constraint 'code.qualifier.name.codeSystem', cardinality: '1..1', value: '1.2.840.10008.2.16.4'

    #This qualifier SHALL contain exactly one [1..1] value (CONF:26466).
    constraint 'code.qualifier.value', cardinality: '1..1'

    #MAY contain zero or one [0..1] text (CONF:9233).
    constraint 'text', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9235).
    constraint 'effectiveTime', cardinality: '0..1'

    #SHALL contain at least one [1..*] entryRelationship (CONF:9237) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9238).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] SOP Instance Observation (templateId:2.16.840.1.113883.10.20.6.2.8) (CONF:15927).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    Ccd.load_extension('series_act.rb')
  end
end
