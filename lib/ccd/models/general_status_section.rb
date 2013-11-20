module Ccd
  class GeneralStatusSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7985) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.2.5" (CONF:10457).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.2.5"}

    # SHALL contain exactly one [1..1] code (CONF:15472).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"10210-3", :display_name=>"General Status"}}

    # This code SHALL contain exactly one [1..1] @codeSystem (CONF:26477).
    constraint 'code.code_system', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] title (CONF:7987).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7988).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('general_status_section.rb')
  end
end
