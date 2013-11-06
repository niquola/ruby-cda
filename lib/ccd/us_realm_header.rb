module Ccd
  class USRealmHeader < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] realmCode="US" (CONF:16791).
    constraint 'realmCode', cardinality: '1..1', value: 'US'

    #SHALL contain exactly one [1..1] typeId (CONF:5361).
    constraint 'typeId', cardinality: '1..1'

    #This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:5250).
    constraint 'typeId.root', cardinality: '1..1', value: '2.16.840.1.113883.1.3'

    #This typeId SHALL contain exactly one [1..1] @extension="POCD_HD000040" (CONF:5251).
    constraint 'typeId.extension', cardinality: '1..1', value: 'POCD_HD000040'

    #SHALL contain exactly one [1..1] templateId (CONF:5252) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.1" (CONF:10036).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.1'

    #SHALL contain exactly one [1..1] id (CONF:5363).
    constraint 'id', cardinality: '1..1'

    #This id SHALL be a globally unique identifier for the document
    constraint 'id'

    #SHALL contain exactly one [1..1] code (CONF:5253).
    constraint 'code', cardinality: '1..1'

    #This code SHALL specify the particular kind of document (e.g. History and Physical, Discharge Summary, Progress Note)
    constraint 'code'

    #SHALL contain exactly one [1..1] title (CONF:5254).
    constraint 'title', cardinality: '1..1'

    #can either be a locally defined name or the display name corresponding to clinicalDocument/code
    constraint 'title'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:5256).
    constraint 'effectiveTime', cardinality: '1..1'

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'effectiveTime'

    #SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259).
    constraint 'confidentialityCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372).
    constraint 'languageCode', cardinality: '1..1'

    #MAY contain zero or one [0..1] setId (CONF:5261).
    constraint 'setId', cardinality: '0..1'

    #If  setId is present versionNumber SHALL be present
    constraint 'setId'

    #MAY contain zero or one [0..1] versionNumber (CONF:5264).
    constraint 'versionNumber', cardinality: '0..1'

    #If versionNumber is present setId SHALL be present
    constraint 'versionNumber'

    #SHALL contain at least one [1..*] recordTarget (CONF:5266).
    constraint 'recordTarget', cardinality: '1..*'

    #Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:5267).
    constraint 'recordTarget.patientRole', cardinality: '1..1'

    #This patientRole SHALL contain at least one [1..*] id (CONF:5268).
    constraint 'recordTarget.patientRole.id', cardinality: '1..*'

    #This patientRole SHALL contain at least one [1..*] addr (CONF:5271).
    constraint 'recordTarget.patientRole.addr', cardinality: '1..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'recordTarget.patientRole.addr'

    #This patientRole SHALL contain at least one [1..*] telecom (CONF:5280).
    constraint 'recordTarget.patientRole.telecom', cardinality: '1..*'

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:5375).
    constraint 'recordTarget.patientRole.telecom.use', cardinality: '0..1'

    #This patientRole SHALL contain exactly one [1..1] patient (CONF:5283).
    constraint 'recordTarget.patientRole.patient', cardinality: '1..1'

    #This patient SHALL contain at least one [1..*] name (CONF:5284).
    constraint 'recordTarget.patientRole.patient.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Patient Name (PTN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1)
    constraint 'recordTarget.patientRole.patient.name'

    #This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) 2.16.840.1.113883.1.11.1 DYNAMIC (CONF:6394).
    constraint 'recordTarget.patientRole.patient.administrativeGenderCode', cardinality: '1..1'

    #This patient SHALL contain exactly one [1..1] birthTime (CONF:5298).
    constraint 'recordTarget.patientRole.patient.birthTime', cardinality: '1..1'

    #SHALL be precise to year
    constraint 'recordTarget.patientRole.patient.birthTime'

    #SHOULD be precise to day
    constraint 'recordTarget.patientRole.patient.birthTime'

    #This patient SHOULD contain zero or one [0..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status 2.16.840.1.113883.1.11.12212 DYNAMIC (CONF:5303).
    constraint 'recordTarget.patientRole.patient.maritalStatusCode', cardinality: '0..1'

    #This patient MAY contain zero or one [0..1] religiousAffiliationCode, which SHALL be selected from ValueSet Religious Affiliation 2.16.840.1.113883.1.11.19185 DYNAMIC (CONF:5317).
    constraint 'recordTarget.patientRole.patient.religiousAffiliationCode', cardinality: '0..1'

    #This patient MAY contain zero or one [0..1] raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:5322).
    constraint 'recordTarget.patientRole.patient.raceCode', cardinality: '0..1'

    #This patient MAY contain zero or more [0..*] sdtc:raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:7263).
    constraint 'recordTarget.patientRole.patient.sdtc:raceCode', cardinality: '0..*'

    #This patient MAY contain zero or one [0..1] ethnicGroupCode, which SHALL be selected from ValueSet EthnicityGroup 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:5323).
    constraint 'recordTarget.patientRole.patient.ethnicGroupCode', cardinality: '0..1'

    #This patient MAY contain zero or more [0..*] guardian (CONF:5325).
    constraint 'recordTarget.patientRole.patient.guardian', cardinality: '0..*'

    #The guardian, if present, SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet ResponsibleParty 2.16.840.1.113883.1.11.19830 DYNAMIC (CONF:5326).
    constraint 'recordTarget.patientRole.patient.guardian.code', cardinality: '0..1'

    #The guardian, if present, SHOULD contain zero or more [0..*] addr (CONF:5359).
    constraint 'recordTarget.patientRole.patient.guardian.addr', cardinality: '0..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'recordTarget.patientRole.patient.guardian.addr'

    #The guardian, if present, MAY contain zero or more [0..*] telecom (CONF:5382).
    constraint 'recordTarget.patientRole.patient.guardian.telecom', cardinality: '0..*'

    #The telecom, if present, SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7993).
    constraint 'recordTarget.patientRole.patient.guardian.telecom.use', cardinality: '0..1'

    #The guardian, if present, SHALL contain exactly one [1..1] guardianPerson (CONF:5385).
    constraint 'recordTarget.patientRole.patient.guardian.guardianPerson', cardinality: '1..1'

    #This guardianPerson SHALL contain at least one [1..*] name (CONF:5386).
    constraint 'recordTarget.patientRole.patient.guardian.guardianPerson.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'recordTarget.patientRole.patient.guardian.guardianPerson.name'

    #This patient MAY contain zero or one [0..1] birthplace (CONF:5395).
    constraint 'recordTarget.patientRole.patient.birthplace', cardinality: '0..1'

    #The birthplace, if present, SHALL contain exactly one [1..1] place (CONF:5396).
    constraint 'recordTarget.patientRole.patient.birthplace.place', cardinality: '1..1'

    #This place SHALL contain exactly one [1..1] addr (CONF:5397).
    constraint 'recordTarget.patientRole.patient.birthplace.place.addr', cardinality: '1..1'

    #This addr SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country 2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:5404).
    constraint 'recordTarget.patientRole.patient.birthplace.place.addr.country', cardinality: '0..1'

    #This addr MAY contain zero or one [0..1] postalCode, which SHALL be selected from ValueSet PostalCode 2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:5403).
    constraint 'recordTarget.patientRole.patient.birthplace.place.addr.postalCode', cardinality: '0..1'

    #If country is US, this addr SHALL contain exactly one [1..1] state, which SHALL be selected from ValueSet 2.16.840.1.113883.3.88.12.80.1 StateValueSet DYNAMIC
    constraint 'recordTarget.patientRole.patient.birthplace.place.addr', cardinality: '1..1'

    #This patient SHOULD contain zero or more [0..*] languageCommunication (CONF:5406).
    constraint 'recordTarget.patientRole.patient.languageCommunication', cardinality: '0..*'

    #The languageCommunication, if present, SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5407).
    constraint 'recordTarget.patientRole.patient.languageCommunication.languageCode', cardinality: '1..1'

    #The languageCommunication, if present, MAY contain zero or one [0..1] modeCode, which SHALL be selected from ValueSet LanguageAbilityMode 2.16.840.1.113883.1.11.12249 DYNAMIC (CONF:5409).
    constraint 'recordTarget.patientRole.patient.languageCommunication.modeCode', cardinality: '0..1'

    #The languageCommunication, if present, SHOULD contain zero or one [0..1] proficiencyLevelCode, which SHALL be selected from ValueSet LanguageAbilityProficiency 2.16.840.1.113883.1.11.12199 DYNAMIC (CONF:9965).
    constraint 'recordTarget.patientRole.patient.languageCommunication.proficiencyLevelCode', cardinality: '0..1'

    #The languageCommunication, if present, MAY contain zero or one [0..1] preferenceInd (CONF:5414).
    constraint 'recordTarget.patientRole.patient.languageCommunication.preferenceInd', cardinality: '0..1'

    #This patientRole MAY contain zero or one [0..1] providerOrganization (CONF:5416).
    constraint 'recordTarget.patientRole.providerOrganization', cardinality: '0..1'

    #The providerOrganization, if present, SHALL contain at least one [1..*] id (CONF:5417).
    constraint 'recordTarget.patientRole.providerOrganization.id', cardinality: '1..*'

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16820).
    constraint 'recordTarget.patientRole.providerOrganization.id.root', cardinality: '0..1', value: '2.16.840.1.113883.4.6'

    #The providerOrganization, if present, SHALL contain at least one [1..*] name (CONF:5419).
    constraint 'recordTarget.patientRole.providerOrganization.name', cardinality: '1..*'

    #The providerOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:5420).
    constraint 'recordTarget.patientRole.providerOrganization.telecom', cardinality: '1..*'

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7994).
    constraint 'recordTarget.patientRole.providerOrganization.telecom.use', cardinality: '0..1'

    #The providerOrganization, if present, SHALL contain at least one [1..*] addr (CONF:5422).
    constraint 'recordTarget.patientRole.providerOrganization.addr', cardinality: '1..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'recordTarget.patientRole.providerOrganization.addr'

    #SHALL contain at least one [1..*] author (CONF:5444).
    constraint 'author', cardinality: '1..*'

    #Such authors SHALL contain exactly one [1..1] time (CONF:5445).
    constraint 'author.time', cardinality: '1..1'

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'author.time'

    #Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:5448).
    constraint 'author.assignedAuthor', cardinality: '1..1'

    #This assignedAuthor SHALL contain at least one [1..*] id (CONF:5449).
    constraint 'author.assignedAuthor.id', cardinality: '1..*'

    #If this assignedAuthor is an assignedPerson, the id SHOULD contain zero to one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier.
    constraint 'author.assignedAuthor.id'

    #This assignedAuthor SHOULD contain zero or one [0..1] code (CONF:16787).
    constraint 'author.assignedAuthor.code', cardinality: '0..1'

    #The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:16788).
    constraint 'author.assignedAuthor.code.code', cardinality: '1..1'

    #This assignedAuthor SHALL contain at least one [1..*] addr (CONF:5452).
    constraint 'author.assignedAuthor.addr', cardinality: '1..*'

    #The content SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'author.assignedAuthor.addr'

    #This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:5428).
    constraint 'author.assignedAuthor.telecom', cardinality: '1..*'

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7995).
    constraint 'author.assignedAuthor.telecom.use', cardinality: '0..1'

    #This assignedAuthor SHOULD contain zero or one [0..1] assignedPerson (CONF:5430).
    constraint 'author.assignedAuthor.assignedPerson', cardinality: '0..1'

    #The assignedPerson, if present, SHALL contain at least one [1..*] name (CONF:16789).
    constraint 'author.assignedAuthor.assignedPerson.name', cardinality: '1..*'

    #The content SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'author.assignedAuthor.assignedPerson.name'

    #This assignedAuthor SHOULD contain zero or one [0..1] assignedAuthoringDevice (CONF:16783).
    constraint 'author.assignedAuthor.assignedAuthoringDevice', cardinality: '0..1'

    #The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] manufacturerModelName (CONF:16784).
    constraint 'author.assignedAuthor.assignedAuthoringDevice.manufacturerModelName', cardinality: '1..1'

    #The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] softwareName (CONF:16785).
    constraint 'author.assignedAuthor.assignedAuthoringDevice.softwareName', cardinality: '1..1'

    #There SHALL be exactly one assignedAuthor/assignedPerson or exactly one assignedAuthor/assignedAuthoringDevice
    constraint 'author.assignedAuthor'

    #MAY contain zero or one [0..1] dataEnterer (CONF:5441).
    constraint 'dataEnterer', cardinality: '0..1'

    #The dataEnterer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:5442).
    constraint 'dataEnterer.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:5443).
    constraint 'dataEnterer.assignedEntity.id', cardinality: '1..*'

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16821).
    constraint 'dataEnterer.assignedEntity.id.root', cardinality: '0..1', value: '2.16.840.1.113883.4.6'

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:5460).
    constraint 'dataEnterer.assignedEntity.addr', cardinality: '1..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'dataEnterer.assignedEntity.addr'

    #This assignedEntity SHALL contain at least one [1..*] telecom (CONF:5466).
    constraint 'dataEnterer.assignedEntity.telecom', cardinality: '1..*'

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7996).
    constraint 'dataEnterer.assignedEntity.telecom.use', cardinality: '0..1'

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:5469).
    constraint 'dataEnterer.assignedEntity.assignedPerson', cardinality: '1..1'

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:5470).
    constraint 'dataEnterer.assignedEntity.assignedPerson.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'dataEnterer.assignedEntity.assignedPerson.name'

    #This assignedEntity MAY contain zero or one [0..1] code which SHOULD be selected from coding system NUCC Health Care Provider Taxonomy 2.16.840.1.113883.6.101
    constraint 'dataEnterer.assignedEntity'

    #MAY contain zero or more [0..*] informant (CONF:8001) such that it
    constraint 'informant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:8002).
    constraint 'informant.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:9945).
    constraint 'informant.assignedEntity.id', cardinality: '1..*'

    #If assignedEntity/id is a provider then this id, SHOULD include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier
    constraint 'informant.assignedEntity.id'

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:8220).
    constraint 'informant.assignedEntity.addr', cardinality: '1..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'informant.assignedEntity.addr'

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:8221).
    constraint 'informant.assignedEntity.assignedPerson', cardinality: '1..1'

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:8222).
    constraint 'informant.assignedEntity.assignedPerson.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'informant.assignedEntity.assignedPerson.name'

    #This assignedEntity MAY contain zero or one [0..1] code which SHOULD be selected from coding system NUCC Health Care Provider Taxonomy 2.16.840.1.113883.6.101
    constraint 'informant.assignedEntity'

    #MAY contain zero or more [0..*] informant (CONF:26467) such that it
    constraint 'informant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] relatedEntity (CONF:26468).
    constraint 'informant.relatedEntity', cardinality: '1..1'

    #SHALL contain exactly one [1..1] custodian (CONF:5519).
    constraint 'custodian', cardinality: '1..1'

    #This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:5520).
    constraint 'custodian.assignedCustodian', cardinality: '1..1'

    #This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:5521).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization', cardinality: '1..1'

    #This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:5522).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.id', cardinality: '1..*'

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16822).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.id.root', cardinality: '0..1', value: '2.16.840.1.113883.4.6'

    #This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:5524).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.name', cardinality: '1..1'

    #This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:5525).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.telecom', cardinality: '1..1'

    #This telecom SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7998).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.telecom.use', cardinality: '0..1'

    #This representedCustodianOrganization SHALL contain exactly one [1..1] addr (CONF:5559).
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.addr', cardinality: '1..1'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'custodian.assignedCustodian.representedCustodianOrganization.addr'

    #MAY contain zero or more [0..*] informationRecipient (CONF:5565).
    constraint 'informationRecipient', cardinality: '0..*'

    #The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:5566).
    constraint 'informationRecipient.intendedRecipient', cardinality: '1..1'

    #This intendedRecipient MAY contain zero or one [0..1] informationRecipient (CONF:5567).
    constraint 'informationRecipient.intendedRecipient.informationRecipient', cardinality: '0..1'

    #The informationRecipient, if present, SHALL contain at least one [1..*] name (CONF:5568).
    constraint 'informationRecipient.intendedRecipient.informationRecipient.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'informationRecipient.intendedRecipient.informationRecipient.name'

    #This intendedRecipient MAY contain zero or one [0..1] receivedOrganization (CONF:5577).
    constraint 'informationRecipient.intendedRecipient.receivedOrganization', cardinality: '0..1'

    #The receivedOrganization, if present, SHALL contain exactly one [1..1] name (CONF:5578).
    constraint 'informationRecipient.intendedRecipient.receivedOrganization.name', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] legalAuthenticator (CONF:5579).
    constraint 'legalAuthenticator', cardinality: '0..1'

    #The legalAuthenticator, if present, SHALL contain exactly one [1..1] time (CONF:5580).
    constraint 'legalAuthenticator.time', cardinality: '1..1'

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'legalAuthenticator.time'

    #The legalAuthenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:5583).
    constraint 'legalAuthenticator.signatureCode', cardinality: '1..1'

    #This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature 2.16.840.1.113883.5.89 STATIC) (CONF:5584).
    constraint 'legalAuthenticator.signatureCode.code', cardinality: '1..1', value: 'S'

    #The legalAuthenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:5585).
    constraint 'legalAuthenticator.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:5586).
    constraint 'legalAuthenticator.assignedEntity.id', cardinality: '1..*'

    #Such ids MAY contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16823).
    constraint 'legalAuthenticator.assignedEntity.id.root', cardinality: '0..1', value: '2.16.840.1.113883.4.6'

    #This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 STATIC (CONF:17000).
    constraint 'legalAuthenticator.assignedEntity.code', cardinality: '0..1'

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:5589).
    constraint 'legalAuthenticator.assignedEntity.addr', cardinality: '1..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'legalAuthenticator.assignedEntity.addr'

    #This assignedEntity SHALL contain at least one [1..*] telecom (CONF:5595).
    constraint 'legalAuthenticator.assignedEntity.telecom', cardinality: '1..*'

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7999).
    constraint 'legalAuthenticator.assignedEntity.telecom.use', cardinality: '0..1'

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:5597).
    constraint 'legalAuthenticator.assignedEntity.assignedPerson', cardinality: '1..1'

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:5598).
    constraint 'legalAuthenticator.assignedEntity.assignedPerson.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'legalAuthenticator.assignedEntity.assignedPerson.name'

    #MAY contain zero or more [0..*] authenticator (CONF:5607).
    constraint 'authenticator', cardinality: '0..*'

    #The authenticator, if present, SHALL contain exactly one [1..1] time (CONF:5608).
    constraint 'authenticator.time', cardinality: '1..1'

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'authenticator.time'

    #The authenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:5610).
    constraint 'authenticator.signatureCode', cardinality: '1..1'

    #This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature 2.16.840.1.113883.5.89 STATIC) (CONF:5611).
    constraint 'authenticator.signatureCode.code', cardinality: '1..1', value: 'S'

    #The authenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:5612).
    constraint 'authenticator.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:5613).
    constraint 'authenticator.assignedEntity.id', cardinality: '1..*'

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier  (CONF:16824).
    constraint 'authenticator.assignedEntity.id.root', cardinality: '0..1', value: '2.16.840.1.113883.4.6'

    #This assignedEntity MAY contain zero or one [0..1] code (CONF:16825).
    constraint 'authenticator.assignedEntity.code', cardinality: '0..1'

    #The code, if present, MAY contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 STATIC (CONF:16826).
    constraint 'authenticator.assignedEntity.code.code', cardinality: '0..1'

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:5616).
    constraint 'authenticator.assignedEntity.addr', cardinality: '1..*'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'authenticator.assignedEntity.addr'

    #This assignedEntity SHALL contain at least one [1..*] telecom (CONF:5622).
    constraint 'authenticator.assignedEntity.telecom', cardinality: '1..*'

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:8000).
    constraint 'authenticator.assignedEntity.telecom.use', cardinality: '0..1'

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:5624).
    constraint 'authenticator.assignedEntity.assignedPerson', cardinality: '1..1'

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:5625).
    constraint 'authenticator.assignedEntity.assignedPerson.name', cardinality: '1..*'

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'authenticator.assignedEntity.assignedPerson.name'

    #MAY contain zero or more [0..*] participant (CONF:10003) such that it
    constraint 'participant', cardinality: '0..*'

    #MAY contain zero or one [0..1] time (CONF:10004).
    constraint 'participant.time', cardinality: '0..1'

    #Such participants, if present, SHALL contain associatedEntity/associatedPerson or associatedEntity/scopingOrganization.
    constraint 'participant'

    #Unless otherwise specified by the document specific header constraints, when participant/@typeCode is IND, associatedEntity/@classCode SHALL be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30
    constraint 'participant'

    #MAY contain zero or more [0..*] inFulfillmentOf (CONF:9952).
    constraint 'inFulfillmentOf', cardinality: '0..*'

    #The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:9953).
    constraint 'inFulfillmentOf.order', cardinality: '1..1'

    #This order SHALL contain at least one [1..*] id (CONF:9954).
    constraint 'inFulfillmentOf.order.id', cardinality: '1..*'

    #MAY contain zero or more [0..*] documentationOf (CONF:14835).
    constraint 'documentationOf', cardinality: '0..*'

    #The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:14836).
    constraint 'documentationOf.serviceEvent', cardinality: '1..1'

    #This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:14837).
    constraint 'documentationOf.serviceEvent.effectiveTime', cardinality: '1..1'

    #This effectiveTime SHALL contain exactly one [1..1] low (CONF:14838).
    constraint 'documentationOf.serviceEvent.effectiveTime.low', cardinality: '1..1'

    #This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:14839).
    constraint 'documentationOf.serviceEvent.performer', cardinality: '0..*'

    #The performer, if present, SHALL contain exactly one [1..1] @typeCode (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:14840).
    constraint 'documentationOf.serviceEvent.performer.typeCode', cardinality: '1..1'

    #The performer participant represents clinicians who actually and principally carry out the serviceEvent. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient’s key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors
    constraint 'documentationOf.serviceEvent.performer.typeCode'

    #The performer, if present, MAY contain zero or one [0..1] functionCode (CONF:16818).
    constraint 'documentationOf.serviceEvent.performer.functionCode', cardinality: '0..1'

    #The functionCode, if present, SHOULD contain zero or one [0..1] @codeSystem, which SHOULD be selected from CodeSystem participationFunction (2.16.840.1.113883.5.88) STATIC (CONF:16819).
    constraint 'documentationOf.serviceEvent.performer.functionCode.codeSystem', cardinality: '0..1'

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:14841).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:14846).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.id', cardinality: '1..*'

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:14847).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.id.root', cardinality: '0..1', value: '2.16.840.1.113883.4.6'

    #This assignedEntity SHOULD contain zero or one [0..1] code (CONF:14842).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.code', cardinality: '0..1'

    #The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from CodeSystem NUCCProviderTaxonomy (2.16.840.1.113883.6.101) STATIC (CONF:14843).
    constraint 'documentationOf.serviceEvent.performer.assignedEntity.code.code', cardinality: '1..1'

    #MAY contain zero or more [0..*] authorization (CONF:16792) such that it
    constraint 'authorization', cardinality: '0..*'

    #SHALL contain exactly one [1..1] consent (CONF:16793).
    constraint 'authorization.consent', cardinality: '1..1'

    #This consent MAY contain zero or more [0..*] id (CONF:16794).
    constraint 'authorization.consent.id', cardinality: '0..*'

    #This consent MAY contain zero or one [0..1] code (CONF:16795).
    constraint 'authorization.consent.code', cardinality: '0..1'

    #The type of consent (e.g., a consent to perform the related serviceEvent) is conveyed in consent/code.
    constraint 'authorization.consent.code'

    #This consent SHALL contain exactly one [1..1] statusCode (CONF:16797).
    constraint 'authorization.consent.statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:16798).
    constraint 'authorization.consent.statusCode.code', cardinality: '1..1', value: 'completed'

    #MAY contain zero or one [0..1] componentOf (CONF:9955).
    constraint 'componentOf', cardinality: '0..1'

    #The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:9956).
    constraint 'componentOf.encompassingEncounter', cardinality: '1..1'

    #This encompassingEncounter SHALL contain at least one [1..*] id (CONF:9959).
    constraint 'componentOf.encompassingEncounter.id', cardinality: '1..*'

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:9958).
    constraint 'componentOf.encompassingEncounter.effectiveTime', cardinality: '1..1'
  end
end
