module Ccd
  class SOPInstanceObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="DGIMG" Diagnostic Image (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9240).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"DGIMG"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9241).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # The @root contains an OID representing the DICOM SOP Instance UID
    # SHALL contain at least one [1..*] id (CONF:9242).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:9244).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code (CONF:19225).
    constraint 'code.code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.6.1" DCMUID (CONF:19227).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>"1.2.840.10008.2.6.1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('sop_instance_observation.rb')
  end
end
