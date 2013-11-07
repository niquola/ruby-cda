module Ccd
  class PhysicianReadingStudyPerformer < ::Cda::Performer1
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8424).
    constraint 'type_code', cardinality: '1..1', value: 'PRF'

    #MAY contain zero or one [0..1] time (CONF:8425).
    constraint 'time', cardinality: '0..1'

    #The content of time SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.3)
    constraint 'time'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:8426).
    constraint 'assigned_entity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:10033).
    constraint 'assigned_entity.id', cardinality: '1..*'

    #The id SHOULD include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier
    constraint 'assigned_entity.id'

    #This assignedEntity SHALL contain exactly one [1..1] code (CONF:8427).
    constraint 'assigned_entity.code', cardinality: '1..1'

    #SHALL contain a valid DICOM personal identification code sequence (@codeSystem is 1.2.840.10008.2.16.4) or an appropriate national health care provider coding system (e.g., NUCC in the U.S., where @codeSystem is 2.16.840.1.113883.6.101).
    constraint 'assigned_entity.code'

    #Every assignedEntity element SHALL have at least one assignedPerson or representedOrganization.
    constraint 'assigned_entity'

    #SHALL contain exactly one [1..1] templateId/@root="2.16.840.1.113883.10.20.6.2.1" (CONF:8423).
    constraint 'template_id/root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.1'

    Ccd.load_extension('physician_reading_study_performer.rb')
  end
end
