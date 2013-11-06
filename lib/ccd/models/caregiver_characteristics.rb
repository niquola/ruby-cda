module Ccd
  class CaregiverCharacteristics < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14219).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14220).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14221) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.72" (CONF:14222).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.72'

    #SHALL contain at least one [1..*] id (CONF:14223).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14230).
    constraint 'code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] statusCode (CONF:14233).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19090).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:14599).
    constraint 'value', cardinality: '1..1'

    #SHALL contain at least one [1..*] participant (CONF:14227).
    constraint 'participant', cardinality: '1..*'

    #Such participants SHALL contain exactly one [1..1] @typeCode="IND" (CONF:26451).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'IND'

    #Such participants MAY contain zero or one [0..1] time (CONF:14830).
    constraint 'participant.time', cardinality: '0..1'

    #The time, if present, SHALL contain exactly one [1..1] low (CONF:14831).
    constraint 'participant.time.low', cardinality: '1..1'

    #The time, if present, MAY contain zero or one [0..1] high (CONF:14832).
    constraint 'participant.time.high', cardinality: '0..1'

    #Such participants SHALL contain exactly one [1..1] participantRole (CONF:14228).
    constraint 'participant.participantRole', cardinality: '1..1'

    #This participantRole SHALL contain exactly one [1..1] @classCode="CAREGIVER" (CONF:14229).
    constraint 'participant.participantRole.classCode', cardinality: '1..1', value: 'CAREGIVER'

    Ccd.load_extension('caregiver_characteristics.rb')
  end
end
