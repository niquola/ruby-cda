module Ccd
  class ContinuityOfCareDocumentCCD < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8450) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.2" (CONF:10038).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.2'

    #SHALL contain exactly one [1..1] code (CONF:17180).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="34133-9" Summarization of Episode Note (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:17181).
    constraint 'code.code', cardinality: '1..1', value: '34133-9'

    #SHALL contain at least one [1..*] author (CONF:9442).
    constraint 'author', cardinality: '1..*'

    #Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:9443).
    constraint 'author.assignedAuthor', cardinality: '1..1'

    #	SHALL contain exactly one [1..1] assignedPerson or exactly one [1..1]  representedOrganization
    constraint 'author.assignedAuthor'

    #If assignedAuthor has an associated representedOrganization with no assignedPerson or assignedAuthoringDevice, then the value for “ClinicalDocument/author/assignedAuthor/id/@NullFlavor” SHALL be “NA” “Not applicable” 2.16.840.1.113883.5.1008 NullFlavor STATIC.
    constraint 'author.assignedAuthor'

    #SHALL contain exactly one [1..1] documentationOf (CONF:8452).
    constraint 'documentationOf', cardinality: '1..1'

    #This documentationOf SHALL contain exactly one [1..1] serviceEvent (CONF:8480).
    constraint 'documentationOf.serviceEvent', cardinality: '1..1'

    #This serviceEvent SHALL contain exactly one [1..1] @classCode="PCPR" Care Provision (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8453).
    constraint 'documentationOf.serviceEvent.classCode', cardinality: '1..1', value: 'PCPR'

    #This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:8481).
    constraint 'documentationOf.serviceEvent.effectiveTime', cardinality: '1..1'

    #This effectiveTime SHALL contain exactly one [1..1] low (CONF:8454).
    constraint 'documentationOf.serviceEvent.effectiveTime.low', cardinality: '1..1'

    #This effectiveTime SHALL contain exactly one [1..1] high (CONF:8455).
    constraint 'documentationOf.serviceEvent.effectiveTime.high', cardinality: '1..1'

    #This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:8482).
    constraint 'documentationOf.serviceEvent.performer', cardinality: '0..*'

    #The performer, if present, SHALL contain exactly one [1..1] @typeCode="PRF" Participation physical performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8458).
    constraint 'documentationOf.serviceEvent.performer.typeCode', cardinality: '1..1', value: 'PRF'

    #The performer, if present, MAY contain zero or one [0..1] assignedEntity (CONF:8459).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity', cardinality: '0..1'

    #The assignedEntity, if present, SHALL contain at least one [1..*] id (CONF:8460).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.id', cardinality: '1..*'

    #	SHOULD include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.id'

    #The assignedEntity, if present, MAY contain zero or one [0..1] code (CONF:8461).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.code', cardinality: '0..1'

    #i.	The code MAY be the NUCC Health Care Provider Taxonomy (CodeSystem: 2.16.840.1.113883.6.101). (See http://www.nucc.org)
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.code'

    #	serviceEvent/performer represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient’s key healthcare providers would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors
    constraint 'documentationOf.serviceEvent.performer'

    #The component/structuredBody SHALL conform to the section constraints below
    constraint ''

    #
    constraint '', cardinality: '1..1'

    #
    constraint '', cardinality: '1..1'

    #
    constraint '', cardinality: '1..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '1..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    #
    constraint '', cardinality: '0..1'

    Ccd.load_extension('continuity_of_care_document_ccd.rb')
  end
end
