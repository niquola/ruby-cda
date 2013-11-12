module Ccd
  class ObserverContext < ::Cda::AssignedAuthor
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:9194) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.4" (CONF:10536).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.4"}

    # The id element contains the author's id or the DICOM device observer UID
    # SHALL contain at least one [1..*] id (CONF:9196).
    constraint 'id', {:cardinality=>"1..*"}

    Ccd.load_extension('observer_context.rb')
  end
end
