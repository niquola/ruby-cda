module Ccd
  class AssessmentAndPlanSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7705) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.9" (CONF:10381).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.9'

    #SHALL contain exactly one [1..1] code (CONF:15353).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="51847-2" Assessment and Plan (CONF:15354).
    constraint 'code.code', cardinality: '1..1', value: '51847-2'

    #SHALL contain exactly one [1..1] text (CONF:7707).
    constraint 'text', cardinality: '1..1'

    #MAY contain zero or more [0..*] entry (CONF:7708) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Plan of Care Activity Act (templateId:2.16.840.1.113883.10.20.22.4.39) (CONF:15448).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('assessment_and_plan_section.rb')
  end
end
