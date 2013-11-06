module Ccd
  class FetusSubjectContext < ::Cda::RelatedSubject
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:9189) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.3" (CONF:10535).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.3'

    #SHALL contain exactly one [1..1] code (CONF:9190).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="121026" (CONF:26455).
    constraint 'code.code', cardinality: '1..1', value: '121026'

    #This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26476).
    constraint 'code.codeSystem', cardinality: '1..1', value: '1.2.840.10008.2.16.4'

    #SHALL contain exactly one [1..1] subject (CONF:9191).
    constraint 'subject', cardinality: '1..1'

    #This subject SHALL contain exactly one [1..1] name (CONF:15347).
    constraint 'subject.name', cardinality: '1..1'

    Ccd.load_extension('fetus_subject_context.rb')
  end
end
