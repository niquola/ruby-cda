module Ccd
  class ObserverContext < ::Cda::AssignedAuthor
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:9194) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.4" (CONF:10536).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.4'

    #SHALL contain at least one [1..*] id (CONF:9196).
    constraint 'id', cardinality: '1..*'

    #Either assignedPerson or assignedAuthoringDevice SHALL be present
    constraint ''

    Ccd.load_extension('ObserverContext')
  end
end
