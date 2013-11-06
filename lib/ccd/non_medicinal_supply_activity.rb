module Ccd
  class NonMedicinalSupplyActivity < ::Cda::Supply
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8745).
    constraint 'classCode', cardinality: '1..1', value: 'SPLY'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:8746).
    constraint 'moodCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:8747) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.50" (CONF:10509).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.50'

    #SHALL contain at least one [1..*] id (CONF:8748).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] statusCode (CONF:8749).
    constraint 'statusCode', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:15498).
    constraint 'effectiveTime', cardinality: '0..1'

    #The effectiveTime, if present, SHOULD contain zero or one [0..1] high.
    constraint 'effectiveTime'

    #SHOULD contain zero or one [0..1] quantity (CONF:8751).
    constraint 'quantity', cardinality: '0..1'

    #MAY contain zero or one [0..1] participant (CONF:8752) such that it
    constraint 'participant', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="PRD" Product (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8754).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'PRD'

    #SHALL contain exactly one [1..1] Product Instance (templateId:2.16.840.1.113883.10.20.22.4.37) (CONF:15900).
    constraint 'participant.participantRole', cardinality: '1..1'
  end
end
