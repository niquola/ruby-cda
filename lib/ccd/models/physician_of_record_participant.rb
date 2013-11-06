module Ccd
  class PhysicianOfRecordParticipant < ::Cda::EncounterParticipant
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @typeCode="ATND" Attender (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8881).
    constraint 'typeCode', cardinality: '1..1', value: 'ATND'

    #MAY contain zero or more [0..*] templateId (CONF:16072).
    constraint 'templateId', cardinality: '0..*'

    #The templateId, if present, MAY contain zero or one [0..1] @root="2.16.840.1.113883.10.20.6.2.2" (CONF:16073).
    constraint 'templateId.root', cardinality: '0..1', value: '2.16.840.1.113883.10.20.6.2.2'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:8886).
    constraint 'assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:8887).
    constraint 'assignedEntity.id', cardinality: '1..*'

    #	The id SHOULD include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier
    constraint 'assignedEntity.id'

    #This assignedEntity SHALL contain exactly one [1..1] code (CONF:8888).
    constraint 'assignedEntity.code', cardinality: '1..1'

    #	SHALL contain a valid DICOM Organizational Role from DICOM CID 7452  (Value Set 1.2.840.10008.6.1.516)(@codeSystem is 1.2.840.10008.2.16.4) or an appropriate national health care provider coding system (e.g., NUCC in the U.S., where @codeSystem is 2.16.840.1.113883.6.101)Footnote: DICOM Part 16 (NEMA PS3.16), page 631 in the 2011 edition. See ftp://medical.nema.org/medical/dicom/2011/11_16pu.pdf
    constraint 'assignedEntity.code'

    #This assignedEntity MAY contain zero or one [0..1] representedOrganization (CONF:16074).
    constraint 'assignedEntity.representedOrganization', cardinality: '0..1'

    #The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:16075).
    constraint 'assignedEntity.representedOrganization.name', cardinality: '0..1'

    #This assignedEntity SHOULD contain zero or one [0..1] name (CONF:8890).
    constraint 'assignedEntity.name', cardinality: '0..1'

    #SHALL contain exactly one [1..1] templateId/@root="2.16.840.1.113883.10.20.6.2.2" (CONF:8440).
    constraint 'templateId/root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.2'

    Ccd.load_extension('PhysicianOfRecordParticipant')
  end
end
