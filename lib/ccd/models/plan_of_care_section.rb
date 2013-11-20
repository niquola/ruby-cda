module Ccd
  class PlanOfCareSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7723) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.10" (CONF:10435).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.10"}

    # SHALL contain exactly one [1..1] code (CONF:14749).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"18776-5", :display_name=>"Plan of Care", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:16986).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7725).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('plan_of_care_section.rb')
  end
end
