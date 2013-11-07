module Ccd
  class ImmunizationActivity < ::Cda::SubstanceAdministration
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8826).
    constraint 'class_code', cardinality: '1..1', value: 'SBADM'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC (CONF:8827).
    constraint 'mood_code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @negationInd (CONF:8985).
    constraint 'negation_ind', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:8828) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.52" (CONF:10498).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.52'

    #SHALL contain at least one [1..*] id (CONF:8829).
    constraint 'id', cardinality: '1..*'

    #MAY contain zero or one [0..1] code (CONF:8830).
    constraint 'code', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] text (CONF:8831).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15543).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15544).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:8833).
    constraint 'status_code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:8834).
    constraint 'effective_time', cardinality: '1..1'

    #MAY contain zero or one [0..1] repeatNumber (CONF:8838).
    constraint 'repeat_number', cardinality: '0..1'

    #MAY contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet Medication Route FDA 2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:8839).
    constraint 'route_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] approachSiteCode, where the code SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:8840).
    constraint 'approach_site_code', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] doseQuantity (CONF:8841).
    constraint 'dose_quantity', cardinality: '0..1'

    #The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:8842).
    constraint 'dose_quantity.unit', cardinality: '0..1'

    #MAY contain zero or one [0..1] administrationUnitCode, which SHALL be selected from ValueSet Medication Product Form Value Set 2.16.840.1.113883.3.88.12.3221.8.11 DYNAMIC (CONF:8846).
    constraint 'administration_unit_code', cardinality: '0..1'

    #SHALL contain exactly one [1..1] consumable (CONF:8847).
    constraint 'consumable', cardinality: '1..1'

    #This consumable SHALL contain exactly one [1..1] Immunization Medication Information (templateId:2.16.840.1.113883.10.20.22.4.54) (CONF:15546).
    constraint 'consumable.manufactured_product', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] performer (CONF:8849).
    constraint 'performer', cardinality: '0..1'

    #MAY contain zero or more [0..*] participant (CONF:8850).
    constraint 'participant', cardinality: '0..*'

    #The participant, if present, SHALL contain exactly one [1..1] @typeCode="CSM" (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8851).
    constraint 'participant.type_code', cardinality: '1..1', value: 'CSM'

    #The participant, if present, SHALL contain exactly one [1..1] Drug Vehicle (templateId:2.16.840.1.113883.10.20.22.4.24) (CONF:15547).
    constraint 'participant.participant_role', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8853) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8854).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:15537).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8856) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8857).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:8858).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:15538).
    constraint 'entry_relationship.act', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8860) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8861).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Medication Supply Order (templateId:2.16.840.1.113883.10.20.22.4.17) (CONF:15539).
    constraint 'entry_relationship.supply', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8863) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8864).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Medication Dispense (templateId:2.16.840.1.113883.10.20.22.4.18) (CONF:15540).
    constraint 'entry_relationship.supply', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8866) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="CAUS" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8867).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'CAUS'

    #SHALL contain exactly one [1..1] Reaction Observation (templateId:2.16.840.1.113883.10.20.22.4.9) (CONF:15541).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8988) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="RSON" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8989).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Immunization Refusal Reason (templateId:2.16.840.1.113883.10.20.22.4.53) (CONF:15542).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] precondition (CONF:8869) such that it
    constraint 'precondition', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="PRCN" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8870).
    constraint 'precondition.type_code', cardinality: '1..1', value: 'PRCN'

    #SHALL contain exactly one [1..1] Precondition for Substance Administration (templateId:2.16.840.1.113883.10.20.22.4.25) (CONF:15548).
    constraint 'precondition.criterion', cardinality: '1..1'

    Ccd.load_extension('immunization_activity.rb')
  end
end
