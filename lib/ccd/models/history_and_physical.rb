module Ccd
  class HistoryAndPhysical < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8283) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.3" (CONF:10046).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.3'

    #SHALL contain exactly one [1..1] code (CONF:17185).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet HPDocumentType 2.16.840.1.113883.1.11.20.22 DYNAMIC (CONF:17186).
    constraint 'code.code', cardinality: '1..1'

    #MAY contain zero or more [0..*] participant (CONF:8286).
    constraint 'participant', cardinality: '0..*'

    #A participant element, if present, SHALL contain an associatedEntity element which SHALL contain either an associatedPerson or scopingOrganization element.
    constraint 'participant'

    #A special class of participant is the supporting person or organization:  an individual or an organization that has a relationship to the patient, including  parents, relatives, caregivers, insurance policyholders, and guarantors. In the case of a supporting person who is also an emergency contact or next-of-kin, a participant element should be present for each role recorded.
    constraint 'participant'

    #c.	When participant/@typeCode is IND, associatedEntity/@classCode SHALL be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30
    constraint 'participant'

    #MAY contain zero or more [0..*] inFulfillmentOf (CONF:8336).
    constraint 'in_fulfillment_of', cardinality: '0..*'

    #An inFulfillmentOf element records the prior orders that are fulfilled (in whole or part) by the service events described in this document.  For example, the prior order might be a referral and this H&P Note may be in partial fulfillment of that referral.
    constraint 'in_fulfillment_of'

    #SHALL contain exactly one [1..1] componentOf (CONF:8338).
    constraint 'component_of', cardinality: '1..1'

    #This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:8339).
    constraint 'component_of.encompassing_encounter', cardinality: '1..1'

    #This encompassingEncounter SHALL contain exactly one [1..1] id (CONF:8340).
    constraint 'component_of.encompassing_encounter.id', cardinality: '1..1'

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:8341).
    constraint 'component_of.encompassing_encounter.effective_time', cardinality: '1..1'

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'component_of.encompassing_encounter.effective_time'

    #This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:8345).
    constraint 'component_of.encompassing_encounter.responsible_party', cardinality: '0..1'

    #The responsibleParty element records only the party responsible for the encounter, not necessarily the entire episode of care.
    constraint 'component_of.encompassing_encounter.responsible_party'

    #The responsibleParty element, if present, SHALL contain an assignedEntity element, which SHALL contain an assignedPerson element, a representedOrganization element, or both.
    constraint 'component_of.encompassing_encounter.responsible_party'

    #This encompassingEncounter MAY contain zero or more [0..*] encounterParticipant (CONF:8342).
    constraint 'component_of.encompassing_encounter.encounter_participant', cardinality: '0..*'

    #An encounterParticipant element, if present, SHALL contain an assignedEntity element, which SHALL contain an assignedPerson element, a representedOrganization element, or both.
    constraint 'component_of.encompassing_encounter.encounter_participant'

    #The encounterParticipant element, if present, records only participants in the encounter, not necessarily in the entire episode of care.
    constraint 'component_of.encompassing_encounter.encounter_participant'

    #This encompassingEncounter MAY contain zero or one [0..1] location (CONF:8344).
    constraint 'component_of.encompassing_encounter.location', cardinality: '0..1'

    #SHALL contain exactly one [1..1] component (CONF:8349).
    constraint 'component', cardinality: '1..1'

    #A History and Physical document can have either a structuredBody or a nonXMLBody.
    constraint 'component'

    #A History and Physical document can conform to CDA Level 1 (nonXMLBody), CDA Level 2 (structuredBody with sections that contain a narrative block), or CDA Level 3 (structuredBody containing sections that contain a narrative block and coded entries). In this template (templateId 2.16.840.1.113883.10.20.22.1.3), coded entries are optional.
    constraint 'component'

    #If structuredBody, the component/structuredBody SHALL conform to the section constraints below
    constraint 'component'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #MAY contain zero or one [0..1] Reason for Visit Section (templateId:2.16.840.1.113883.10.20.22.2.12)
    constraint 'component'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #	SHALL include a Chief Complaint and Reason for Visit Section, Chief Complaint Section, or a Reason for Visit Section
    constraint 'component'

    #SHALL include an Assessment and Plan Section, or an Assessment Section and a Plan Section.
    constraint 'component'

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

    #SHALL NOT contain a Chief Complaint and Reason for Visit Section when either a Chief Complaint Section or a Reason for Visit Section is present
    constraint 'component'

    #
    constraint 'component', cardinality: '0..1'

    Ccd.load_extension('history_and_physical.rb')
  end
end
