module Ccd
  class FamilyHistorySection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7932) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.15" (CONF:10388).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.15"}

    # SHALL contain exactly one [1..1] code (CONF:15469).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"10157-6", :display_name=>"Family History", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:7934).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7935).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('family_history_section.rb')
  end
end
