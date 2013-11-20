module Ccd
  class HospitalConsultationsSection < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:9915) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.42" (CONF:10393).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.42"}

    # SHALL contain exactly one [1..1] code (CONF:15485).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"18841-7", :display_name=>"Hospital Consultations Section"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26479).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:9917).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:9918).
    constraint 'text', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_consultations_section.rb')
  end
end
