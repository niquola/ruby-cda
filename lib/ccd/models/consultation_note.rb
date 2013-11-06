module Ccd
  class ConsultationNote < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8375).
    constraint 'templateId', cardinality: '1..1'

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.4" (CONF:10040).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.4'

    #SHALL contain exactly one [1..1] code (CONF:17176).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ConsultDocumentType 2.16.840.1.113883.11.20.9.31 DYNAMIC (CONF:17177).
    constraint 'code.code', cardinality: '1..1'

    #SHALL contain at least one [1..*] inFulfillmentOf (CONF:8382).
    constraint 'inFulfillmentOf', cardinality: '1..*'

    #Such inFulfillmentOfs SHALL contain exactly one [1..1] order (CONF:8385).
    constraint 'inFulfillmentOf.order', cardinality: '1..1'

    #This order SHALL contain at least one [1..*] id (CONF:9102).
    constraint 'inFulfillmentOf.order.id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] componentOf (CONF:8386).
    constraint 'componentOf', cardinality: '1..1'

    #This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:8387).
    constraint 'componentOf.encompassingEncounter', cardinality: '1..1'

    #This encompassingEncounter SHALL contain exactly one [1..1] id (CONF:8388).
    constraint 'componentOf.encompassingEncounter.id', cardinality: '1..1'

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:8389).
    constraint 'componentOf.encompassingEncounter.effectiveTime', cardinality: '1..1'

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'componentOf.encompassingEncounter.effectiveTime'

    #This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:8391).
    constraint 'componentOf.encompassingEncounter.responsibleParty', cardinality: '0..1'

    #The responsibleParty element records  only the party responsible for the encounter, not necessarily the entire episode of care.
    constraint 'componentOf.encompassingEncounter.responsibleParty'

    #The responsibleParty element, if present, SHALL contain an assignedEntity element which SHALL contain an assignedPerson element, a representedOrganization element, or both.
    constraint 'componentOf.encompassingEncounter.responsibleParty'

    #This encompassingEncounter MAY contain zero or more [0..*] encounterParticipant (CONF:8392).
    constraint 'componentOf.encompassingEncounter.encounterParticipant', cardinality: '0..*'

    #The encounterParticipant element, if present, records only participants in the encounter, not necessarily in the entire episode of care.
    constraint 'componentOf.encompassingEncounter.encounterParticipant'

    #An encounterParticipant element, if present, SHALL contain an assignedEntity element which SHALL contain an assignedPerson element,  a representedOrganization element, or both.
    constraint 'componentOf.encompassingEncounter.encounterParticipant'

    #SHALL contain exactly one [1..1] component (CONF:8397).
    constraint 'component', cardinality: '1..1'

    #A Consultation Note can have either a structuredBody or a nonXMLBody.
    constraint 'component'

    #A Consultation Note can conform to CDA Level 1 (nonXMLBody), CDA Level 2 (structuredBody with sections that contain a narrative block), or CDA Level 3 (structuredBody containing sections that contain a narrative block and coded entries). In this template (templateId 2.16.840.1.113883.10.20.22.1.4), coded entries are optional.
    constraint 'component'

    #	If structuredBody, the component/structuredBody SHALL conform to the section constraints below
    constraint 'component'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #SHALL include an Assessment and Plan Section, or an Assessment Section and a Plan of Care Section.
    constraint 'component'

    #SHALL include a Reason for Referral or Reason for Visit section
    constraint 'component'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #	SHALL NOT include an Assessment/Plan Section when an Assessment Section and a Plan of Care Section are present
    constraint 'component'

    #	SHALL NOT include a combined Chief Complaint and Reason for Visit Section with either a Chief Complaint Section or a Reason for Visit Section
    constraint 'component'

    Ccd.load_extension('ConsultationNote')
  end
end
