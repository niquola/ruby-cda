module Ccd
  class PostoperativeDiagnosisSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8101) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.35" (CONF:10437).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.35'

    #SHALL contain exactly one [1..1] code (CONF:15401).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10218-6" Postoperative Diagnosis (CONF:15402).
    constraint 'code.code', cardinality: '1..1', value: '10218-6'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26488).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8103).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8104).
    constraint 'text', cardinality: '1..1'
  end
end