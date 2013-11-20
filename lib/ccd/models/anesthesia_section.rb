module Ccd
  class AnesthesiaSection < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:8066) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.25" (CONF:10380).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.25"}

    # SHALL contain exactly one [1..1] code (CONF:15351).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"59774-0", :display_name=>"Anesthesia"}}

    # SHALL contain exactly one [1..1] title (CONF:8068).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8069).
    constraint 'text', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('anesthesia_section.rb')
  end
end
