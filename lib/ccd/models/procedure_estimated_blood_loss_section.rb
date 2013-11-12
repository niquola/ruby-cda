module Ccd
  class ProcedureEstimatedBloodLossSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8074) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.18.2.9" (CONF:10467).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.18.2.9"}

    # SHALL contain exactly one [1..1] code (CONF:15415).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="59770-8" Procedure Estimated Blood Loss (CONF:15416).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"59770-8", :display_name=>"Procedure Estimated Blood Loss"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26491).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:8076).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8077).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('procedure_estimated_blood_loss_section.rb')
  end
end
