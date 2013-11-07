module Ccd
  class SocialHistoryObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8548).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8549).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8550) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.38" (CONF:10526).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.38'

    #SHALL contain at least one [1..*] id (CONF:8551).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:8558).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Social History Type  2.16.840.1.113883.3.88.12.80.60 STATIC (CONF:19220).
    constraint 'code.code', cardinality: '0..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:19221).
    constraint 'code.original_text', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:19222).
    constraint 'code.original_text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:19223).
    constraint 'code.original_text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'code.original_text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:8553).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19117).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] value (CONF:8559).
    constraint 'value', cardinality: '0..1'

    #Observation/value can be any data type. Where Observation/value is a physical quantity, the unit of measure SHALL be expressed using a valid Unified Code for Units of Measure (UCUM) expression.
    constraint 'value'

    Ccd.load_extension('social_history_observation.rb')
  end
end
