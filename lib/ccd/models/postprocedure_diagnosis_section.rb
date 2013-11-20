module Ccd
  class PostprocedureDiagnosisSection < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:8167) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.36" (CONF:10438).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.36"}

    # SHALL contain exactly one [1..1] code (CONF:15403).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"59769-0", :display_name=>"Postprocedure Diagnosis", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:8170).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8171).
    constraint 'text', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('postprocedure_diagnosis_section.rb')
  end
end
