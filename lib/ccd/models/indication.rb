module Ccd
  class Indication < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7480).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7481).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7482) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.19" (CONF:10502).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.19'

    #SHALL contain exactly one [1..1] id (CONF:7483).
    constraint 'id', cardinality: '1..1'

    #Set the observation/id equal to an ID on the problem list to signify that problem as an indication.
    constraint 'id'

    #SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2012-06-01 (CONF:16886).
    constraint 'code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] statusCode (CONF:7487).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19105).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:7488).
    constraint 'effectiveTime', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] value with @xsi:type="CD" (CONF:7489).
    constraint 'value', cardinality: '0..1'

    #The value, if present, MAY contain zero or one [0..1] @nullFlavor (CONF:15990).
    constraint 'value.nullFlavor', cardinality: '0..1'

    #If the diagnosis is unknown or the SNOMED code is unknown, @nullFlavor SHOULD be “UNK”. If the code is something other than SNOMED, @nullFlavor SHOULD be “OTH” and the other code SHOULD be placed in the translation element
    constraint 'value.nullFlavor'

    #The value, if present, SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:15985).
    constraint 'value.code', cardinality: '0..1'

    Ccd.load_extension('indication.rb')
  end
end
