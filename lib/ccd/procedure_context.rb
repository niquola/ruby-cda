module Ccd
  class ProcedureContext < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:26452).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:26453).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:9200) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.5" (CONF:10530).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.5'

    #SHALL contain exactly one [1..1] code (CONF:9201).
    constraint 'code', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9203).
    constraint 'effectiveTime', cardinality: '0..1'

    #The effectiveTime, if present, SHALL contain exactly one [1..1] @value (CONF:17173).
    constraint 'effectiveTime.value', cardinality: '1..1'

    #Procedure Context SHALL be represented with the procedure or act elements depending on the nature of the procedure.
    constraint ''
  end
end
