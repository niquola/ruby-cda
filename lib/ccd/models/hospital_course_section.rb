module Ccd
  class HospitalCourseSection < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:7852) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.3.5" (CONF:10459).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"1.3.6.1.4.1.19376.1.5.3.1.3.5"}

    # SHALL contain exactly one [1..1] code (CONF:15487).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"8648-8", :display_name=>"Hospital Course"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26480).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:7854).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7855).
    constraint 'text', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_course_section.rb')
  end
end
