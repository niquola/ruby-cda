module Ccd
  class ComplicationsOpNote < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8026) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.32" (CONF:10385).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.32"}

    # SHALL contain exactly one [1..1] code/@code="10830-8" Complications (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:8027).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"10830-8", :display_name=>"Complications", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:8028).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8029).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('complications_op_note.rb')
  end
end
