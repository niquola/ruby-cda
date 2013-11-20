module Ccd
  class DiagnosticImagingReport < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:8404) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.5" (CONF:10042).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.5"}

    # SHALL contain exactly one [1..1] code (CONF:14833).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] documentationOf (CONF:8416) such that it
    constraint 'documentation_of', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] serviceEvent (CONF:8431).
    constraint 'documentation_of.service_event', {:cardinality=>"1..1"}

    # This serviceEvent SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8430).
    constraint 'documentation_of.service_event.class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # This serviceEvent SHALL contain exactly one [1..1] code (CONF:8419).
    constraint 'documentation_of.service_event.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:14907).
    constraint 'component', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] code/@code, which SHALL be selected from ValueSet DIRDocumentTypeCodes 2.16.840.1.113883.11.20.9.32 DYNAMIC (CONF:8408).
    constraint 'code.code', {:cardinality=>"1..1"}

    constraint '', {:cardinality=>"1..1"}

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('diagnostic_imaging_report.rb')
  end
end
