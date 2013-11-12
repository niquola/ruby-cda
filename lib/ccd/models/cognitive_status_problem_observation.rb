module Ccd
  class CognitiveStatusProblemObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14319).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"OBS", :display_name=>"Observation", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14320).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    #MAY contain zero or one [0..1] @negationInd (CONF:14344).
    constraint 'negation_ind', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] templateId (CONF:14346) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.73" (CONF:14347).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.73"}

    #SHALL contain at least one [1..*] id (CONF:14321).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code (CONF:14804).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHOULD contain zero or one [0..1] @code="373930000" Cognitive function finding   (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14805).
    constraint 'code.code', {:cardinality=>"0..1", :value=>{:code=>"373930000", :display_name=>"Cognitive function finding  ", :code_system=>"2.16.840.1.113883.6.96", :_type=>"Cda::CV"}}

    #SHOULD contain zero or one [0..1] text (CONF:14341).
    constraint 'text', {:cardinality=>"0..1"}

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15532).
    constraint 'text.reference', {:cardinality=>"0..1"}

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15533).
    constraint 'text.reference.value', {:cardinality=>"0..1"}

    #SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value', {}

    #SHALL contain exactly one [1..1] statusCode (CONF:14323).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19091).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:14324).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:26458).
    constraint 'effective_time.low', {:cardinality=>"1..1"}

    #The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:26459).
    constraint 'effective_time.high', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:14349).
    constraint 'value', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] methodCode (CONF:14693).
    constraint 'method_code', {:cardinality=>"0..*"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:14331) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14588).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"REFR", :display_name=>"refers to", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14351).
    constraint 'entry_relationship.supply', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:14335) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14589).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"REFR", :display_name=>"refers to", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:14352).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:14467) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14590).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"COMP", :display_name=>"has component", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14468).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('cognitive_status_problem_observation.rb')
  end
end
