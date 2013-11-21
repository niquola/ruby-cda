module Ccd
  class FetusSubjectContext < ::Cda::RelatedSubject
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:9189) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.3" (CONF:10535).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.3"}

    # SHALL contain exactly one [1..1] code (CONF:9190).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"121026", :display_name=>""}}

    # This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26476).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>"1.2.840.10008.2.16.4"}

    # SHALL contain exactly one [1..1] subject (CONF:9191).
    constraint 'subject', {:cardinality=>"1..1"}

    # The name element is used to store the DICOM fetus ID, typically a pseudonym such as fetus_1.
    # This subject SHALL contain exactly one [1..1] name (CONF:15347).
    constraint 'subject.name', {:cardinality=>"1..1"}

    def self.template_type
      "relatedSubject"
    end

    Ccd.load_extension('fetus_subject_context.rb')
  end
end
