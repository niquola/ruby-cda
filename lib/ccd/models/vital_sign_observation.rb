module Ccd
  class VitalSignObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7297).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7298).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7299) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.27" (CONF:10527).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.27'

    #SHALL contain at least one [1..*] id (CONF:7300).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result 2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:7301).
    constraint 'code', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] text (CONF:7302).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15943).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15944).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:7303).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19119).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:7304).
    constraint 'effectiveTime', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:7305).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or one [0..1] interpretationCode (CONF:7307).
    constraint 'interpretationCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] methodCode (CONF:7308).
    constraint 'methodCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] targetSiteCode (CONF:7309).
    constraint 'targetSiteCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] author (CONF:7310).
    constraint 'author', cardinality: '0..1'

    Ccd.load_extension('vital_sign_observation.rb')
  end
end
