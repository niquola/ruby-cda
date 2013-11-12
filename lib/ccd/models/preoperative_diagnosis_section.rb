module Ccd
  class PreoperativeDiagnosisSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8097) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.34" (CONF:10439).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.34"}

    # SHALL contain exactly one [1..1] code (CONF:15405).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"10219-4", :display_name=>"Preoperative Diagnosis", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:8099).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8100).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('preoperative_diagnosis_section.rb')
  end
end
