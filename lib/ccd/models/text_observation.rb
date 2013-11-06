module Ccd
  class TextObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:9288).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9289).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:9290) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.12" (CONF:10534).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.12'

    #SHALL contain exactly one [1..1] code (CONF:9291).
    constraint 'code', cardinality: '1..1'

    #MAY contain zero or one [0..1] text (CONF:9295).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15938).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15939).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9294).
    constraint 'effectiveTime', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="ED" (CONF:9292).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:9298) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="SPRT" Has Support (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9299).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SPRT'

    #SHALL contain exactly one [1..1] SOP Instance Observation (templateId:2.16.840.1.113883.10.20.6.2.8) (CONF:15941).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:9301) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="SPRT" Has Support (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9302).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SPRT'

    #SHALL contain exactly one [1..1] Quantity Measurement Observation (templateId:2.16.840.1.113883.10.20.6.2.14) (CONF:15942).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    Ccd.load_extension('text_observation.rb')
  end
end
