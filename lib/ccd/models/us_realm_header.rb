module Ccd
  class USRealmHeader < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] realmCode="US" (CONF:16791).
    constraint 'realm_code.code', {:cardinality=>"1..1", :value=>{:code=>"US", :display_name=>""}}

    # SHALL contain exactly one [1..1] typeId (CONF:5361).
    constraint 'type_id', {:cardinality=>"1..1"}

    # This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:5250).
    constraint 'type_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.1.3"}

    # This typeId SHALL contain exactly one [1..1] @extension="POCD_HD000040" (CONF:5251).
    constraint 'type_id.extension', {:cardinality=>"1..1", :value=>"POCD_HD000040"}

    # SHALL contain exactly one [1..1] templateId (CONF:5252) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.1" (CONF:10036).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.1"}

    # SHALL contain exactly one [1..1] id (CONF:5363).
    constraint 'id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] code (CONF:5253).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] title (CONF:5254).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:5256).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259).
    constraint 'confidentiality_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372).
    constraint 'language_code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] recordTarget (CONF:5266).
    constraint 'record_target', {:cardinality=>"1..*"}

    # Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:5267).
    constraint 'record_target.patient_role', {:cardinality=>"1..1"}

    # This patientRole SHALL contain at least one [1..*] id (CONF:5268).
    constraint 'record_target.patient_role.id', {:cardinality=>"1..*"}

    # This patientRole SHALL contain at least one [1..*] addr (CONF:5271).
    constraint 'record_target.patient_role.addr', {:cardinality=>"1..*"}

    # This patientRole SHALL contain at least one [1..*] telecom (CONF:5280).
    constraint 'record_target.patient_role.telecom', {:cardinality=>"1..*"}

    # This patientRole SHALL contain exactly one [1..1] patient (CONF:5283).
    constraint 'record_target.patient_role.patient', {:cardinality=>"1..1"}

    # This patient SHALL contain at least one [1..*] name (CONF:5284).
    constraint 'record_target.patient_role.patient.name', {:cardinality=>"1..*"}

    # This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) 2.16.840.1.113883.1.11.1 DYNAMIC (CONF:6394).
    constraint 'record_target.patient_role.patient.administrative_gender_code', {:cardinality=>"1..1"}

    # This patient SHALL contain exactly one [1..1] birthTime (CONF:5298).
    constraint 'record_target.patient_role.patient.birth_time', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] author (CONF:5444).
    constraint 'author', {:cardinality=>"1..*"}

    # Such authors SHALL contain exactly one [1..1] time (CONF:5445).
    constraint 'author.time', {:cardinality=>"1..1"}

    # Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:5448).
    constraint 'author.assigned_author', {:cardinality=>"1..1"}

    # This assignedAuthor SHALL contain at least one [1..*] id (CONF:5449).
    constraint 'author.assigned_author.id', {:cardinality=>"1..*"}

    # This assignedAuthor SHALL contain at least one [1..*] addr (CONF:5452).
    constraint 'author.assigned_author.addr', {:cardinality=>"1..*"}

    # This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:5428).
    constraint 'author.assigned_author.telecom', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] custodian (CONF:5519).
    constraint 'custodian', {:cardinality=>"1..1"}

    # This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:5520).
    constraint 'custodian.assigned_custodian', {:cardinality=>"1..1"}

    # This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:5521).
    constraint 'custodian.assigned_custodian.represented_custodian_organization', {:cardinality=>"1..1"}

    # This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:5522).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.id', {:cardinality=>"1..*"}

    # This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:5524).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.name', {:cardinality=>"1..1"}

    # This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:5525).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.telecom', {:cardinality=>"1..1"}

    # This representedCustodianOrganization SHALL contain exactly one [1..1] addr (CONF:5559).
    constraint 'custodian.assigned_custodian.represented_custodian_organization.addr', {:cardinality=>"1..1"}

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('us_realm_header.rb')
  end
end
