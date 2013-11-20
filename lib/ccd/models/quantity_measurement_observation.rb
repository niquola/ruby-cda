module Ccd
  class QuantityMeasurementObservation < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9317).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9318).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:9319) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.14" (CONF:10532).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.14"}

    # The value set of the observation/code includes numeric measurement types for linear dimensions, areas, volumes, and other numeric measurements. This value set is extensible and comprises the union of SNOMED codes for observable entities as reproduced in DIRQuantityMeasurementTypeCodes (ValueSet: 2.16.840.1.113883.11.20.9.29) and DICOM Codes in DICOMQuantityMeasurementTypeCodes (ValueSet: 2.16.840.1.113883.11.20.9.30).
    # SHALL contain exactly one [1..1] code (CONF:9320).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:9324).
    constraint 'value', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('quantity_measurement_observation.rb')
  end
end
