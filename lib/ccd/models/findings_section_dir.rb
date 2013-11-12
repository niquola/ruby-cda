module Ccd
  class FindingsSectionDIR < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8531) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.1.2" (CONF:10456).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.1.2"}

    Ccd.load_extension('findings_section_dir.rb')
  end
end
