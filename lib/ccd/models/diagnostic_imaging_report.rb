module Ccd
  class DiagnosticImagingReport < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8404) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.5" (CONF:10042).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.5'

    #SHALL contain exactly one [1..1] code (CONF:14833).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet DIRDocumentTypeCodes 2.16.840.1.113883.11.20.9.32 DYNAMIC (CONF:14834).
    constraint 'code.code', cardinality: '0..1'

    #SHALL NOT contain [0..0] informant (CONF:8410).
    constraint 'informant', cardinality: '0..0'

    #MAY contain zero or more [0..*] informationRecipient (CONF:8411).
    constraint 'informationRecipient', cardinality: '0..*'

    #The physician requesting the imaging procedure (ClincalDocument/participant[@typeCode=REF]/associatedEntity), if present, SHOULD also be recorded as an informationRecipient, unless in the local setting another physician (such as the attending physician for an inpatient) is known to be the appropriate recipient of the report.
    constraint 'informationRecipient'

    #When no referring physician is present, as in the case of self-referred screening examinations allowed by law, the intendedRecipient MAY be absent. The intendedRecipient MAY also be the health chart of the patient, in which case the receivedOrganization SHALL be the scoping organization of that chart.
    constraint 'informationRecipient'

    #MAY contain zero or one [0..1] participant (CONF:8414) such that it
    constraint 'participant', cardinality: '0..1'

    #SHALL contain exactly one [1..1] assignedPerson (CONF:8415).
    constraint 'participant.assignedPerson', cardinality: '1..1'

    #This assignedPerson SHALL contain exactly one [1..1] name (CONF:9406).
    constraint 'participant.assignedPerson.name', cardinality: '1..1'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'participant.assignedPerson.name'

    #SHALL contain exactly one [1..1] documentationOf (CONF:8416) such that it
    constraint 'documentationOf', cardinality: '1..1'

    #SHALL contain exactly one [1..1] serviceEvent (CONF:8431).
    constraint 'documentationOf.serviceEvent', cardinality: '1..1'

    #This serviceEvent SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8430).
    constraint 'documentationOf.serviceEvent.classCode', cardinality: '1..1', value: 'ACT'

    #This serviceEvent SHOULD contain zero or more [0..*] id (CONF:8418).
    constraint 'documentationOf.serviceEvent.id', cardinality: '0..*'

    #This serviceEvent SHALL contain exactly one [1..1] code (CONF:8419).
    constraint 'documentationOf.serviceEvent.code', cardinality: '1..1'

    #The value of serviceEvent/code SHALL NOT conflict with the ClininicalDocument/code. When transforming from DICOM SR documents that do not contain a procedure code, an appropriate nullFlavor SHALL be used on serviceEvent/code.
    constraint 'documentationOf.serviceEvent.code'

    #This serviceEvent SHOULD contain zero or more [0..*] Physician Reading Study Performer (templateId:2.16.840.1.113883.10.20.6.2.1) (CONF:8422).
    constraint 'documentationOf.serviceEvent.performer', cardinality: '0..*'

    #MAY contain zero or one [0..1] relatedDocument (CONF:8432) such that it
    constraint 'relatedDocument', cardinality: '0..1'

    #When a Diagnostic Imaging Report has been transformed from a DICOM SR document, relatedDocument/@typeCode SHALL be XFRM, and relatedDocument/parentDocument/id SHALL contain the SOP Instance UID of the original DICOM SR document.
    constraint 'relatedDocument'

    #SHALL contain exactly one [1..1] id (CONF:10030).
    constraint 'relatedDocument.id', cardinality: '1..1'

    #This id MAY contain zero or one [0..1] componentOf (CONF:8434).
    constraint 'relatedDocument.id.componentOf', cardinality: '0..1'

    #The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:8449).
    constraint 'relatedDocument.id.componentOf.encompassingEncounter', cardinality: '1..1'

    #This encompassingEncounter SHALL contain at least one [1..*] id (CONF:8435).
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.id', cardinality: '1..*'

    #In the case of transformed DICOM SR documents, an appropriate null flavor MAY be used if the id is unavailable.
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.id'

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:8437).
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.effectiveTime', cardinality: '1..1'

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.effectiveTime'

    #This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:8438).
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.responsibleParty', cardinality: '0..1'

    #The responsibleParty, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:9407).
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.responsibleParty.assignedEntity', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] assignedPerson OR SHOULD contain zero or one [0..1] representedOrganization
    constraint 'relatedDocument.id.componentOf.encompassingEncounter.responsibleParty.assignedEntity'

    #
    constraint 'relatedDocument.id.componentOf.encompassingEncounter', cardinality: '0..1'

    #	OIDs SHALL be represented in dotted decimal notation, where each decimal number is either 0 or starts with a nonzero digit. More formally, an OID SHALL be in the form ([0-2])(.([1-9][0-9]*|0))+
    constraint 'relatedDocument.id'

    #	OIDs SHALL be no more than 64 characters in length
    constraint 'relatedDocument.id'

    #SHALL contain exactly one [1..1] component (CONF:14907).
    constraint 'component', cardinality: '1..1'

    #A Diagnostic Imaging Report can have either a structuredBody or a nonXMLBody.
    constraint 'component'

    #If structuredBody, the component/structuredBody SHALL conform to the section constraints below.
    constraint 'component'

    #The ClinicalDocument/id/@root attribute SHALL be a syntactically correct OID, and SHALL NOT be a UUID.
    constraint ''

    #OIDs SHALL be represented in dotted decimal notation, where each decimal number is either 0 or starts with a nonzero digit. More formally, an OID SHALL be in the form ([0-2])(.([1-9][0-9]*|0))+
    constraint ''

    #OIDs SHALL be no more than 64 characters in length.
    constraint ''

    #SHALL contain exactly one [1..1] code/@code, which SHALL be selected from ValueSet DIRDocumentTypeCodes 2.16.840.1.113883.11.20.9.32 DYNAMIC (CONF:8408).
    constraint 'code/code', cardinality: '1..1'

    #The DICOM Object Catalog section (templateId 2.16.840.1.113883.10.20.6.1.1), if present, SHALL be the first section in the document Body
    constraint ''

    #With the exception of the DICOM Object Catalog (templateId 2.16.840.1.113883.10.20.6.1.1), all sections within the Diagnostic Imaging Report content SHOULD contain a title element
    constraint ''

    #The section/code SHOULD be selected from LOINC® or DICOM for sections not listed in the DIR Section Type Codes table
    constraint ''

    #Descriptions for sections is under development in DICOM in cooperation with the RSNA reporting initiative
    constraint ''

    #All sections defined in the DIR Section Type Codes table SHALL be top-level sections
    constraint ''

    #A section element SHALL have a code element, which SHALL contain a LOINC code  or DCM code for sections that have no LOINC equivalent. This only applies to sections described in the DIR Section Type Codes table
    constraint ''

    #Apart from the DICOM Object Catalog (templateId 2.16.840.1.113883.10.20.6.1.1), all other instances of section SHALL contain at least one text element or one or more component elements
    constraint ''

    #All text or component elements SHALL contain content. Text elements SHALL contain PCDATA or child elements, and component elements SHALL contain child elements
    constraint ''

    #The text elements (and their children) MAY contain Web Access to DICOM Persistent Object (WADO) references to DICOM objects by including a linkHtml element where @href is a valid WADO URL and the text content of linkHtml is the visible text of the hyperlink
    constraint ''

    #If clinical statements are present, the section/text SHALL represent faithfully all such statements and MAY contain additional text
    constraint ''

    #
    constraint '', cardinality: '0..*'

    #If the service context of a section is different from the value specified in documentationOf/serviceEvent, then the section SHALL contain one or more entries containing Procedure Context (templateId 2.16.840.1.113883.10.20.6.2.5), which will reset the context for any clinical statements nested within those elements
    constraint ''

    #
    constraint '', cardinality: '0..*'

    #If the subject of a section is a fetus, the section SHALL contain a subject element containing a Fetus Subject Context (templateId 2.16.840.1.113883.10.20.6.2.3)
    constraint ''

    #
    constraint '', cardinality: '0..*'

    #: If the author of a section is different from the author(s) listed in the Header, an author element SHALL be present containing Observer Context (templateId 2.16.840.1.113883.10.20.6.2.4)
    constraint ''

    #
    constraint '', cardinality: '1..1'

    #
    constraint '', cardinality: '0..1'

    Ccd.load_extension('diagnostic_imaging_report.rb')
  end
end
