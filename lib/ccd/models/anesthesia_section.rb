module Ccd
  class AnesthesiaSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8066) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.25" (CONF:10380).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.25"}

    #SHALL contain exactly one [1..1] code (CONF:15351).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="59774-0" Anesthesia (CONF:15352).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"59774-0"}

    #SHALL contain exactly one [1..1] title (CONF:8068).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8069).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8092) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Procedure Activity Procedure (templateId:2.16.840.1.113883.10.20.22.4.14) (CONF:15447).
    constraint 'entry.procedure', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8094) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:26454).
    constraint 'entry.substance_administration', {:cardinality=>"1..1"}

    Ccd.load_extension('anesthesia_section.rb')
  end
end
