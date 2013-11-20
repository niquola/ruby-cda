module Ccd
  class PreconditionForSubstanceAdministrat < ::Cda::Criterion
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:7372) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.25" (CONF:10517).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.25"}

    def self.template_type
      "criterion"
    end

    Ccd.load_extension('precondition_for_substance_administrat.rb')
  end
end
