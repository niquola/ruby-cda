module Ccd
  class StudyAct < ::Cda::Act
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9207).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9208).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:9209) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.6" (CONF:10533).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.6"}

    # SHALL contain at least one [1..*] id (CONF:9210).
    constraint 'id', {:cardinality=>"1..*"}

    # The @root contains the OID of the study instance UID since DICOM study ids consist only of an OID
    # Such ids SHALL contain exactly one [1..1] @root (CONF:9213).
    constraint 'id.root', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] code (CONF:19172).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"113014", :display_name=>""}}

    # This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26506).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"1.2.840.10008.2.16.4", :display_name=>"", :code_system=>"1.2.840.10008.2.16.4"}}

    # SHALL contain at least one [1..*] entryRelationship (CONF:9219) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9220).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"COMP"}

    # SHALL contain exactly one [1..1] Series Act (templateId:2.16.840.1.113883.10.20.22.4.63) (CONF:15937).
    constraint 'entry_relationship.act', {:cardinality=>"1..1"}

    def self.template_type
      "act"
    end

    Ccd.load_extension('study_act.rb')
  end
end
