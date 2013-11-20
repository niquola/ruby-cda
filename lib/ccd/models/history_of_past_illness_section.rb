module Ccd
  class HistoryOfPastIllnessSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7828) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.20" (CONF:10390).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.20"}

    # SHALL contain exactly one [1..1] code (CONF:15474).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"11348-0", :display_name=>"History of Past Illness", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:7830).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7831).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('history_of_past_illness_section.rb')
  end
end
