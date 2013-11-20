module Ccd
  class AssessmentAndPlanSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7705) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.9" (CONF:10381).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.9"}

    # SHALL contain exactly one [1..1] code (CONF:15353).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"51847-2", :display_name=>"Assessment and Plan"}}

    # SHALL contain exactly one [1..1] text (CONF:7707).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('assessment_and_plan_section.rb')
  end
end
