module Ccd
  class MedicationActivity < ::Cda::SubstanceAdministration
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7496).
    constraint 'classCode', cardinality: '1..1', value: 'SBADM'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:7497).
    constraint 'moodCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:7499) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.16" (CONF:10504).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.16'

    #SHALL contain at least one [1..*] id (CONF:7500).
    constraint 'id', cardinality: '1..*'

    #MAY contain zero or one [0..1] code (CONF:7506).
    constraint 'code', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] text (CONF:7501).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15977).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15978).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:7507).
    constraint 'statusCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:7508) such that it
    constraint 'effectiveTime', cardinality: '1..1'

    #SHALL contain exactly one [1..1] low (CONF:7511).
    constraint 'effectiveTime.low', cardinality: '1..1'

    #SHALL contain exactly one [1..1] high (CONF:7512).
    constraint 'effectiveTime.high', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:7513) such that it
    constraint 'effectiveTime', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @operator="A" (CONF:9106).
    constraint 'effectiveTime.operator', cardinality: '1..1', value: 'A'

    #	SHALL contain exactly one [1..1] @xsi:type=”PIVL_TS” or “EIVL_TS”
    constraint 'effectiveTime'

    #MAY contain zero or one [0..1] repeatNumber (CONF:7555).
    constraint 'repeatNumber', cardinality: '0..1'

    #In "INT" (intent) mood, the repeatNumber defines the number of allowed administrations. For example, a repeatNumber of "3" means that the substance can be administered up to 3 times. In "EVN" (event) mood, the repeatNumber is the number of occurrences. For example, a repeatNumber of "3" in a substance administration event means that the current administration is the 3rd in a series.
    constraint 'repeatNumber'

    #MAY contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet Medication Route FDA 2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:7514).
    constraint 'routeCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] approachSiteCode, where the code SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:7515).
    constraint 'approachSiteCode', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] doseQuantity (CONF:7516).
    constraint 'doseQuantity', cardinality: '0..1'

    #The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:7526).
    constraint 'doseQuantity.unit', cardinality: '0..1'

    #Pre-coordinated consumable: If the consumable code is a pre-coordinated unit dose (e.g. "metoprolol 25mg tablet") then doseQuantity is a unitless number that indicates the number of products given per administration (e.g. "2", meaning 2 x "metoprolol 25mg tablet").
    constraint 'doseQuantity'

    #Not pre-coordinated consumable: If the consumable code is not pre-coordinated (e.g. is simply "metoprolol"), then doseQuantity must represent a physical quantity with @unit, e.g. "25" and "mg", specifying the amount of product given per administration.
    constraint 'doseQuantity'

    #MAY contain zero or one [0..1] rateQuantity (CONF:7517).
    constraint 'rateQuantity', cardinality: '0..1'

    #The rateQuantity, if present, SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:7525).
    constraint 'rateQuantity.unit', cardinality: '1..1'

    #MAY contain zero or one [0..1] maxDoseQuantity (CONF:7518).
    constraint 'maxDoseQuantity', cardinality: '0..1'

    #MAY contain zero or one [0..1] administrationUnitCode, which SHALL be selected from ValueSet Medication Product Form Value Set 2.16.840.1.113883.3.88.12.3221.8.11 DYNAMIC (CONF:7519).
    constraint 'administrationUnitCode', cardinality: '0..1'

    #SHALL contain exactly one [1..1] consumable (CONF:7520).
    constraint 'consumable', cardinality: '1..1'

    #This consumable SHALL contain exactly one [1..1] Medication Information (templateId:2.16.840.1.113883.10.20.22.4.23) (CONF:16085).
    constraint 'consumable.manufacturedProduct', cardinality: '1..1'

    #MAY contain zero or one [0..1] performer (CONF:7522).
    constraint 'performer', cardinality: '0..1'

    #MAY contain zero or more [0..*] participant (CONF:7523) such that it
    constraint 'participant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="CSM" (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:7524).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'CSM'

    #SHALL contain exactly one [1..1] Drug Vehicle (templateId:2.16.840.1.113883.10.20.22.4.24) (CONF:16086).
    constraint 'participant.participantRole', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7536) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7537).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:16087).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7539) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7540).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7542).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:16088).
    constraint 'entryRelationship.act', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7543) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7547).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Medication Supply Order (templateId:2.16.840.1.113883.10.20.22.4.17) (CONF:16089).
    constraint 'entryRelationship.supply', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7549) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7553).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Medication Dispense (templateId:2.16.840.1.113883.10.20.22.4.18) (CONF:16090).
    constraint 'entryRelationship.supply', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7552) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="CAUS" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7544).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'CAUS'

    #SHALL contain exactly one [1..1] Reaction Observation (templateId:2.16.840.1.113883.10.20.22.4.9) (CONF:16091).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] precondition (CONF:7546) such that it
    constraint 'precondition', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="PRCN" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7550).
    constraint 'precondition.typeCode', cardinality: '1..1', value: 'PRCN'

    #SHALL contain exactly one [1..1] Precondition for Substance Administration (templateId:2.16.840.1.113883.10.20.22.4.25) (CONF:16092).
    constraint 'precondition.criterion', cardinality: '1..1'

    #Medication Activity SHOULD include doseQuantity OR rateQuantity
    constraint ''
  end
end
