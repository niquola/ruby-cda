module Ccd
  class USRealmHeader < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] realmCode="US" (CONF:16791).
    constraint 'realm_code.code', {:cardinality=>"1..1", :value=>{:code=>"US", :display_name=>""}}

    #SHALL contain exactly one [1..1] typeId (CONF:5361).
    constraint 'type_id', {:cardinality=>"1..1"}

    #This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:5250).
    constraint 'type_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.1.3"}

    #This typeId SHALL contain exactly one [1..1] @extension="POCD_HD000040" (CONF:5251).
    constraint 'type_id.extension', {:cardinality=>"1..1", :value=>"POCD_HD000040"}

    #SHALL contain exactly one [1..1] templateId (CONF:5252) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.1" (CONF:10036).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.1"}

    #SHALL contain exactly one [1..1] id (CONF:5363).
    constraint 'id', {:cardinality=>"1..1"}

    #This id SHALL be a globally unique identifier for the document
    constraint 'id', {}

    #SHALL contain exactly one [1..1] code (CONF:5253).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL specify the particular kind of document (e.g. History and Physical, Discharge Summary, Progress Note)
    constraint 'code', {}

    #SHALL contain exactly one [1..1] title (CONF:5254).
    constraint 'title', {:cardinality=>"1..1"}

    #can either be a locally defined name or the display name corresponding to clinicalDocument/code
    constraint 'title', {}

    #SHALL contain exactly one [1..1] effectiveTime (CONF:5256).
    constraint 'effective_time', {:cardinality=>"1..1"}

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'effective_time', {}

    #SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259).
    constraint 'confidentiality_code', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372).
    constraint 'language_code', {:cardinality=>"1..1"}

    #MAY contain zero or one [0..1] setId (CONF:5261).
    constraint 'set_id', {:cardinality=>"0..1"}

    #If  setId is present versionNumber SHALL be present
    constraint 'set_id', {}

    #MAY contain zero or one [0..1] versionNumber (CONF:5264).
    constraint 'version_number', {:cardinality=>"0..1"}

    #If versionNumber is present setId SHALL be present
    constraint 'version_number', {}

    #SHALL contain at least one [1..*] recordTarget (CONF:5266).
    constraint 'record_target', {:cardinality=>"1..*"}

    #Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:5267).
    constraint 'record_target.patient_role', {:cardinality=>"1..1"}

    #This patientRole SHALL contain at least one [1..*] id (CONF:5268).
    constraint 'record_target.patient_role.id', {:cardinality=>"1..*"}

    #This patientRole SHALL contain at least one [1..*] addr (CONF:5271).
    constraint 'record_target.patient_role.addr', {:cardinality=>"1..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'record_target.patient_role.addr', {}

    #This patientRole SHALL contain at least one [1..*] telecom (CONF:5280).
    constraint 'record_target.patient_role.telecom', {:cardinality=>"1..*"}

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:5375).
    constraint 'record_target.patient_role.telecom.use', {:cardinality=>"0..1"}

    #This patientRole SHALL contain exactly one [1..1] patient (CONF:5283).
    constraint 'record_target.patient_role.patient', {:cardinality=>"1..1"}

    #This patient SHALL contain at least one [1..*] name (CONF:5284).
    constraint 'record_target.patient_role.patient.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Patient Name (PTN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1)
    constraint 'record_target.patient_role.patient.name', {}

    #This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) 2.16.840.1.113883.1.11.1 DYNAMIC (CONF:6394).
    constraint 'record_target.patient_role.patient.administrative_gender_code', {:cardinality=>"1..1"}

    #This patient SHALL contain exactly one [1..1] birthTime (CONF:5298).
    constraint 'record_target.patient_role.patient.birth_time', {:cardinality=>"1..1"}

    #SHALL be precise to year
    constraint 'record_target.patient_role.patient.birth_time', {}

    #SHOULD be precise to day
    constraint 'record_target.patient_role.patient.birth_time', {}

    #This patient SHOULD contain zero or one [0..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status 2.16.840.1.113883.1.11.12212 DYNAMIC (CONF:5303).
    constraint 'record_target.patient_role.patient.marital_status_code', {:cardinality=>"0..1"}

    #This patient MAY contain zero or one [0..1] religiousAffiliationCode, which SHALL be selected from ValueSet Religious Affiliation 2.16.840.1.113883.1.11.19185 DYNAMIC (CONF:5317).
    constraint 'record_target.patient_role.patient.religious_affiliation_code', {:cardinality=>"0..1"}

    #This patient MAY contain zero or one [0..1] raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:5322).
    constraint 'record_target.patient_role.patient.race_code', {:cardinality=>"0..1"}

    #This patient MAY contain zero or more [0..*] sdtc:raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:7263).
    constraint 'record_target.patient_role.patient.sdtc:race_code', {:cardinality=>"0..*"}

    #This patient MAY contain zero or one [0..1] ethnicGroupCode, which SHALL be selected from ValueSet EthnicityGroup 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:5323).
    constraint 'record_target.patient_role.patient.ethnic_group_code', {:cardinality=>"0..1"}

    #This patient MAY contain zero or more [0..*] guardian (CONF:5325).
    constraint 'record_target.patient_role.patient.guardian', {:cardinality=>"0..*"}

    #The guardian, if present, SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet ResponsibleParty 2.16.840.1.113883.1.11.19830 DYNAMIC (CONF:5326).
    constraint 'record_target.patient_role.patient.guardian.code', {:cardinality=>"0..1"}

    #The guardian, if present, SHOULD contain zero or more [0..*] addr (CONF:5359).
    constraint 'record_target.patient_role.patient.guardian.addr', {:cardinality=>"0..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'record_target.patient_role.patient.guardian.addr', {}

    #The guardian, if present, MAY contain zero or more [0..*] telecom (CONF:5382).
    constraint 'record_target.patient_role.patient.guardian.telecom', {:cardinality=>"0..*"}

    #The telecom, if present, SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7993).
    constraint 'record_target.patient_role.patient.guardian.telecom.use', {:cardinality=>"0..1"}

    #The guardian, if present, SHALL contain exactly one [1..1] guardianPerson (CONF:5385).
    constraint 'record_target.patient_role.patient.guardian.guardian_person', {:cardinality=>"1..1"}

    #This guardianPerson SHALL contain at least one [1..*] name (CONF:5386).
    constraint 'record_target.patient_role.patient.guardian.guardian_person.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'record_target.patient_role.patient.guardian.guardian_person.name', {}

    #This patient MAY contain zero or one [0..1] birthplace (CONF:5395).
    constraint 'record_target.patient_role.patient.birthplace', {:cardinality=>"0..1"}

    #The birthplace, if present, SHALL contain exactly one [1..1] place (CONF:5396).
    constraint 'record_target.patient_role.patient.birthplace.place', {:cardinality=>"1..1"}

    #This place SHALL contain exactly one [1..1] addr (CONF:5397).
    constraint 'record_target.patient_role.patient.birthplace.place.addr', {:cardinality=>"1..1"}

    #This addr SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country 2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:5404).
    constraint 'record_target.patient_role.patient.birthplace.place.addr.country', {:cardinality=>"0..1"}

    #This addr MAY contain zero or one [0..1] postalCode, which SHALL be selected from ValueSet PostalCode 2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:5403).
    constraint 'record_target.patient_role.patient.birthplace.place.addr.postal_code', {:cardinality=>"0..1"}

    #If country is US, this addr SHALL contain exactly one [1..1] state, which SHALL be selected from ValueSet 2.16.840.1.113883.3.88.12.80.1 StateValueSet DYNAMIC
    constraint 'record_target.patient_role.patient.birthplace.place.addr', {:cardinality=>"1..1"}

    #This patient SHOULD contain zero or more [0..*] languageCommunication (CONF:5406).
    constraint 'record_target.patient_role.patient.language_communication', {:cardinality=>"0..*"}

    #The languageCommunication, if present, SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5407).
    constraint 'record_target.patient_role.patient.language_communication.language_code', {:cardinality=>"1..1"}

    #The languageCommunication, if present, MAY contain zero or one [0..1] modeCode, which SHALL be selected from ValueSet LanguageAbilityMode 2.16.840.1.113883.1.11.12249 DYNAMIC (CONF:5409).
    constraint 'record_target.patient_role.patient.language_communication.mode_code', {:cardinality=>"0..1"}

    #The languageCommunication, if present, SHOULD contain zero or one [0..1] proficiencyLevelCode, which SHALL be selected from ValueSet LanguageAbilityProficiency 2.16.840.1.113883.1.11.12199 DYNAMIC (CONF:9965).
    constraint 'record_target.patient_role.patient.language_communication.proficiency_level_code', {:cardinality=>"0..1"}

    #The languageCommunication, if present, MAY contain zero or one [0..1] preferenceInd (CONF:5414).
    constraint 'record_target.patient_role.patient.language_communication.preference_ind', {:cardinality=>"0..1"}

    #This patientRole MAY contain zero or one [0..1] providerOrganization (CONF:5416).
    constraint 'record_target.patient_role.provider_organization', {:cardinality=>"0..1"}

    #The providerOrganization, if present, SHALL contain at least one [1..*] id (CONF:5417).
    constraint 'record_target.patient_role.provider_organization.id', {:cardinality=>"1..*"}

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16820).
    constraint 'record_target.patient_role.provider_organization.id.root', {:cardinality=>"0..1", :value=>"2.16.840.1.113883.4.6"}

    #The providerOrganization, if present, SHALL contain at least one [1..*] name (CONF:5419).
    constraint 'record_target.patient_role.provider_organization.name', {:cardinality=>"1..*"}

    #The providerOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:5420).
    constraint 'record_target.patient_role.provider_organization.telecom', {:cardinality=>"1..*"}

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7994).
    constraint 'record_target.patient_role.provider_organization.telecom.use', {:cardinality=>"0..1"}

    #The providerOrganization, if present, SHALL contain at least one [1..*] addr (CONF:5422).
    constraint 'record_target.patient_role.provider_organization.addr', {:cardinality=>"1..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'record_target.patient_role.provider_organization.addr', {}

    #SHALL contain at least one [1..*] author (CONF:5444).
    constraint 'author', {:cardinality=>"1..*"}

    #Such authors SHALL contain exactly one [1..1] time (CONF:5445).
    constraint 'author.time', {:cardinality=>"1..1"}

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'author.time', {}

    #Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:5448).
    constraint 'author.assigned_author', {:cardinality=>"1..1"}

    #This assignedAuthor SHALL contain at least one [1..*] id (CONF:5449).
    constraint 'author.assigned_author.id', {:cardinality=>"1..*"}

    #If this assignedAuthor is an assignedPerson, the id SHOULD contain zero to one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier.
    constraint 'author.assigned_author.id', {}

    #This assignedAuthor SHOULD contain zero or one [0..1] code (CONF:16787).
    constraint 'author.assigned_author.code', {:cardinality=>"0..1"}

    #The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:16788).
    constraint 'author.assigned_author.code.code', {:cardinality=>"1..1"}

    #This assignedAuthor SHALL contain at least one [1..*] addr (CONF:5452).
    constraint 'author.assigned_author.addr', {:cardinality=>"1..*"}

    #The content SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'author.assigned_author.addr', {}

    #This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:5428).
    constraint 'author.assigned_author.telecom', {:cardinality=>"1..*"}

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7995).
    constraint 'author.assigned_author.telecom.use', {:cardinality=>"0..1"}

    #This assignedAuthor SHOULD contain zero or one [0..1] assignedPerson (CONF:5430).
    constraint 'author.assigned_author.assigned_person', {:cardinality=>"0..1"}

    #The assignedPerson, if present, SHALL contain at least one [1..*] name (CONF:16789).
    constraint 'author.assigned_author.assigned_person.name', {:cardinality=>"1..*"}

    #The content SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'author.assigned_author.assigned_person.name', {}

    #This assignedAuthor SHOULD contain zero or one [0..1] assignedAuthoringDevice (CONF:16783).
    constraint 'author.assigned_author.assigned_authoring_device', {:cardinality=>"0..1"}

    #The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] manufacturerModelName (CONF:16784).
    constraint 'author.assigned_author.assigned_authoring_device.manufacturer_model_name', {:cardinality=>"1..1"}

    #The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] softwareName (CONF:16785).
    constraint 'author.assigned_author.assigned_authoring_device.software_name', {:cardinality=>"1..1"}

    #There SHALL be exactly one assignedAuthor/assignedPerson or exactly one assignedAuthor/assignedAuthoringDevice
    constraint 'author.assigned_author', {}

    #MAY contain zero or one [0..1] dataEnterer (CONF:5441).
    constraint 'data_enterer', {:cardinality=>"0..1"}

    #The dataEnterer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:5442).
    constraint 'data_enterer.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:5443).
    constraint 'data_enterer.assigned_entity.id', {:cardinality=>"1..*"}

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16821).
    constraint 'data_enterer.assigned_entity.id.root', {:cardinality=>"0..1", :value=>"2.16.840.1.113883.4.6"}

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:5460).
    constraint 'data_enterer.assigned_entity.addr', {:cardinality=>"1..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'data_enterer.assigned_entity.addr', {}

    #This assignedEntity SHALL contain at least one [1..*] telecom (CONF:5466).
    constraint 'data_enterer.assigned_entity.telecom', {:cardinality=>"1..*"}

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7996).
    constraint 'data_enterer.assigned_entity.telecom.use', {:cardinality=>"0..1"}

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:5469).
    constraint 'data_enterer.assigned_entity.assigned_person', {:cardinality=>"1..1"}

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:5470).
    constraint 'data_enterer.assigned_entity.assigned_person.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'data_enterer.assigned_entity.assigned_person.name', {}

    #This assignedEntity MAY contain zero or one [0..1] code which SHOULD be selected from coding system NUCC Health Care Provider Taxonomy 2.16.840.1.113883.6.101
    constraint 'data_enterer.assigned_entity', {}

    #MAY contain zero or more [0..*] informant (CONF:8001) such that it
    constraint 'informant', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] assignedEntity (CONF:8002).
    constraint 'informant.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:9945).
    constraint 'informant.assigned_entity.id', {:cardinality=>"1..*"}

    #If assignedEntity/id is a provider then this id, SHOULD include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier
    constraint 'informant.assigned_entity.id', {}

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:8220).
    constraint 'informant.assigned_entity.addr', {:cardinality=>"1..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'informant.assigned_entity.addr', {}

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:8221).
    constraint 'informant.assigned_entity.assigned_person', {:cardinality=>"1..1"}

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:8222).
    constraint 'informant.assigned_entity.assigned_person.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'informant.assigned_entity.assigned_person.name', {}

    #This assignedEntity MAY contain zero or one [0..1] code which SHOULD be selected from coding system NUCC Health Care Provider Taxonomy 2.16.840.1.113883.6.101
    constraint 'informant.assigned_entity', {}

    #MAY contain zero or more [0..*] informant (CONF:26467) such that it
    constraint 'informant', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] relatedEntity (CONF:26468).
    constraint 'informant.related_entity', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] custodian (CONF:5519).
    constraint 'custodian', {:cardinality=>"1..1"}

    #This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:5520).
    constraint 'custodian.assigned_custodian', {:cardinality=>"1..1"}

    #This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:5521).
    constraint 'custodian.assigned_custodian.represented_custodian_organization', {:cardinality=>"1..1"}

    #This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:5522).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.id', {:cardinality=>"1..*"}

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16822).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.id.root', {:cardinality=>"0..1", :value=>"2.16.840.1.113883.4.6"}

    #This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:5524).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.name', {:cardinality=>"1..1"}

    #This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:5525).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.telecom', {:cardinality=>"1..1"}

    #This telecom SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7998).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.telecom.use', {:cardinality=>"0..1"}

    #This representedCustodianOrganization SHALL contain exactly one [1..1] addr (CONF:5559).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.addr', {:cardinality=>"1..1"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'custodian.assigned_custodian.represented_custodian_organization.addr', {}

    #MAY contain zero or more [0..*] informationRecipient (CONF:5565).
    constraint 'information_recipient', {:cardinality=>"0..*"}

    #The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:5566).
    constraint 'information_recipient.intended_recipient', {:cardinality=>"1..1"}

    #This intendedRecipient MAY contain zero or one [0..1] informationRecipient (CONF:5567).
    constraint 'information_recipient.intended_recipient.information_recipient', {:cardinality=>"0..1"}

    #The informationRecipient, if present, SHALL contain at least one [1..*] name (CONF:5568).
    constraint 'information_recipient.intended_recipient.information_recipient.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'information_recipient.intended_recipient.information_recipient.name', {}

    #This intendedRecipient MAY contain zero or one [0..1] receivedOrganization (CONF:5577).
    constraint 'information_recipient.intended_recipient.received_organization', {:cardinality=>"0..1"}

    #The receivedOrganization, if present, SHALL contain exactly one [1..1] name (CONF:5578).
    constraint 'information_recipient.intended_recipient.received_organization.name', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] legalAuthenticator (CONF:5579).
    constraint 'legal_authenticator', {:cardinality=>"0..1"}

    #The legalAuthenticator, if present, SHALL contain exactly one [1..1] time (CONF:5580).
    constraint 'legal_authenticator.time', {:cardinality=>"1..1"}

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'legal_authenticator.time', {}

    #The legalAuthenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:5583).
    constraint 'legal_authenticator.signature_code', {:cardinality=>"1..1"}

    #This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature 2.16.840.1.113883.5.89 STATIC) (CONF:5584).
    constraint 'legal_authenticator.signature_code.code', {:cardinality=>"1..1", :value=>"S"}

    #The legalAuthenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:5585).
    constraint 'legal_authenticator.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:5586).
    constraint 'legal_authenticator.assigned_entity.id', {:cardinality=>"1..*"}

    #Such ids MAY contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:16823).
    constraint 'legal_authenticator.assigned_entity.id.root', {:cardinality=>"0..1", :value=>"2.16.840.1.113883.4.6"}

    #This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 STATIC (CONF:17000).
    constraint 'legal_authenticator.assigned_entity.code', {:cardinality=>"0..1"}

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:5589).
    constraint 'legal_authenticator.assigned_entity.addr', {:cardinality=>"1..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'legal_authenticator.assigned_entity.addr', {}

    #This assignedEntity SHALL contain at least one [1..*] telecom (CONF:5595).
    constraint 'legal_authenticator.assigned_entity.telecom', {:cardinality=>"1..*"}

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:7999).
    constraint 'legal_authenticator.assigned_entity.telecom.use', {:cardinality=>"0..1"}

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:5597).
    constraint 'legal_authenticator.assigned_entity.assigned_person', {:cardinality=>"1..1"}

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:5598).
    constraint 'legal_authenticator.assigned_entity.assigned_person.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'legal_authenticator.assigned_entity.assigned_person.name', {}

    #MAY contain zero or more [0..*] authenticator (CONF:5607).
    constraint 'authenticator', {:cardinality=>"0..*"}

    #The authenticator, if present, SHALL contain exactly one [1..1] time (CONF:5608).
    constraint 'authenticator.time', {:cardinality=>"1..1"}

    #The content SHALL be a conformant US Realm Date and Time (DTM.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'authenticator.time', {}

    #The authenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:5610).
    constraint 'authenticator.signature_code', {:cardinality=>"1..1"}

    #This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature 2.16.840.1.113883.5.89 STATIC) (CONF:5611).
    constraint 'authenticator.signature_code.code', {:cardinality=>"1..1", :value=>"S"}

    #The authenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:5612).
    constraint 'authenticator.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:5613).
    constraint 'authenticator.assigned_entity.id', {:cardinality=>"1..*"}

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier  (CONF:16824).
    constraint 'authenticator.assigned_entity.id.root', {:cardinality=>"0..1", :value=>"2.16.840.1.113883.4.6"}

    #This assignedEntity MAY contain zero or one [0..1] code (CONF:16825).
    constraint 'authenticator.assigned_entity.code', {:cardinality=>"0..1"}

    #The code, if present, MAY contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 STATIC (CONF:16826).
    constraint 'authenticator.assigned_entity.code.code', {:cardinality=>"0..1"}

    #This assignedEntity SHALL contain at least one [1..*] addr (CONF:5616).
    constraint 'authenticator.assigned_entity.addr', {:cardinality=>"1..*"}

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'authenticator.assigned_entity.addr', {}

    #This assignedEntity SHALL contain at least one [1..*] telecom (CONF:5622).
    constraint 'authenticator.assigned_entity.telecom', {:cardinality=>"1..*"}

    #Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:8000).
    constraint 'authenticator.assigned_entity.telecom.use', {:cardinality=>"0..1"}

    #This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:5624).
    constraint 'authenticator.assigned_entity.assigned_person', {:cardinality=>"1..1"}

    #This assignedPerson SHALL contain at least one [1..*] name (CONF:5625).
    constraint 'authenticator.assigned_entity.assigned_person.name', {:cardinality=>"1..*"}

    #The content of name SHALL be a conformant US Realm Person Name (PN.US.FIELDED) (2.16.840.1.113883.10.20.22.5.1.1)
    constraint 'authenticator.assigned_entity.assigned_person.name', {}

    #MAY contain zero or more [0..*] participant (CONF:10003) such that it
    constraint 'participant', {:cardinality=>"0..*"}

    #MAY contain zero or one [0..1] time (CONF:10004).
    constraint 'participant.time', {:cardinality=>"0..1"}

    #Such participants, if present, SHALL contain associatedEntity/associatedPerson or associatedEntity/scopingOrganization.
    constraint 'participant', {}

    #Unless otherwise specified by the document specific header constraints, when participant/@typeCode is IND, associatedEntity/@classCode SHALL be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30
    constraint 'participant', {}

    #MAY contain zero or more [0..*] inFulfillmentOf (CONF:9952).
    constraint 'in_fulfillment_of', {:cardinality=>"0..*"}

    #The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:9953).
    constraint 'in_fulfillment_of.order', {:cardinality=>"1..1"}

    #This order SHALL contain at least one [1..*] id (CONF:9954).
    constraint 'in_fulfillment_of.order.id', {:cardinality=>"1..*"}

    #MAY contain zero or more [0..*] documentationOf (CONF:14835).
    constraint 'documentation_of', {:cardinality=>"0..*"}

    #The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:14836).
    constraint 'documentation_of.service_event', {:cardinality=>"1..1"}

    #This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:14837).
    constraint 'documentation_of.service_event.effective_time', {:cardinality=>"1..1"}

    #This effectiveTime SHALL contain exactly one [1..1] low (CONF:14838).
    constraint 'documentation_of.service_event.effective_time.low', {:cardinality=>"1..1"}

    #This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:14839).
    constraint 'documentation_of.service_event.performer', {:cardinality=>"0..*"}

    #The performer, if present, SHALL contain exactly one [1..1] @typeCode (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:14840).
    constraint 'documentation_of.service_event.performer.type_code', {:cardinality=>"1..1"}

    #The performer participant represents clinicians who actually and principally carry out the serviceEvent. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient’s key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors
    constraint 'documentation_of.service_event.performer.type_code', {}

    #The performer, if present, MAY contain zero or one [0..1] functionCode (CONF:16818).
    constraint 'documentation_of.service_event.performer.function_code', {:cardinality=>"0..1"}

    #The functionCode, if present, SHOULD contain zero or one [0..1] @codeSystem, which SHOULD be selected from CodeSystem participationFunction (2.16.840.1.113883.5.88) STATIC (CONF:16819).
    constraint 'documentation_of.service_event.performer.function_code.code_system', {:cardinality=>"0..1"}

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:14841).
    constraint 'documentation_of.service_event.performer.assigned_entity', {:cardinality=>"1..1"}

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:14846).
    constraint 'documentation_of.service_event.performer.assigned_entity.id', {:cardinality=>"1..*"}

    #Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:14847).
    constraint 'documentation_of.service_event.performer.assigned_entity.id.root', {:cardinality=>"0..1", :value=>"2.16.840.1.113883.4.6"}

    #This assignedEntity SHOULD contain zero or one [0..1] code (CONF:14842).
    constraint 'documentation_of.service_event.performer.assigned_entity.code', {:cardinality=>"0..1"}

    #The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from CodeSystem NUCCProviderTaxonomy (2.16.840.1.113883.6.101) STATIC (CONF:14843).
    constraint 'documentation_of.service_event.performer.assigned_entity.code.code', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] authorization (CONF:16792) such that it
    constraint 'authorization', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] consent (CONF:16793).
    constraint 'authorization.consent', {:cardinality=>"1..1"}

    #This consent MAY contain zero or more [0..*] id (CONF:16794).
    constraint 'authorization.consent.id', {:cardinality=>"0..*"}

    #This consent MAY contain zero or one [0..1] code (CONF:16795).
    constraint 'authorization.consent.code', {:cardinality=>"0..1"}

    #The type of consent (e.g., a consent to perform the related serviceEvent) is conveyed in consent/code.
    constraint 'authorization.consent.code', {}

    #This consent SHALL contain exactly one [1..1] statusCode (CONF:16797).
    constraint 'authorization.consent.status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:16798).
    constraint 'authorization.consent.status_code.code', {:cardinality=>"1..1", :value=>"completed"}

    #MAY contain zero or one [0..1] componentOf (CONF:9955).
    constraint 'component_of', {:cardinality=>"0..1"}

    #The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:9956).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    #This encompassingEncounter SHALL contain at least one [1..*] id (CONF:9959).
    constraint 'component_of.encompassing_encounter.id', {:cardinality=>"1..*"}

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:9958).
    constraint 'component_of.encompassing_encounter.effective_time', {:cardinality=>"1..1"}

    Ccd.load_extension('us_realm_header.rb')
  end
end
