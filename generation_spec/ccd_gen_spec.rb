$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'generation')
require 'ccd_gen'

describe CcdGen do
  include described_class
  before(:all) do
    require 'virtus'
    generate
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..')
    require 'virtus_annotations'
    require 'cda'
    require 'ccd'
  end

  example do
    glob = "#{File.dirname(__FILE__)}/../lib/ccd/*rb"
    Dir[glob].each { |f| require f }
  end

  example do
    Ccd::MedicationsSectionEntriesRequired.should be
  end

  RSpec::Matchers.define :have_constraint do |name|
    chain :with_value do |attrs|
      @attrs = { value: attrs }
    end

    match do |model|
      constraint = model.constraints[name]
      if @attrs
        not constraint.nil? and constraint.deep_merge(@attrs) == constraint
      else
        not constraint.nil?
      end
    end

    failure_message_for_should do |model|
      if @attrs
        "#{model} should have constraint '#{name}' with #{@attrs.inspect}"
      else
        "#{model} should have constraint '#{name}'"
      end
    end
  end

  example do
    res = Ccd::PolicyActivity.build performer: [{ mode_code: { _type: 'Cda::CE', display_name: 'Trololo' } }]
    res.performer.first.mode_code.should == Cda::CE.new(display_name: 'Trololo')
  end

  example do
    Ccd::PolicyActivity.should have_constraint('performer.type_code').with_value(code: 'PRF')
    Ccd::MedicationUseNoneKnownDeprecated.should have_constraint('value').with_value(code: '182904002')
    Ccd::USRealmHeader.should have_constraint('realm_code.code').with_value(code: 'US')
  end

  example do
    Ccd::ResultsSectionEntriesOptional.should have_constraint('code').with_value(:code=>"30954-2", :display_name=>"Relevant diagnostic tests and/or laboratory data", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV")
  end

  example do
    md = Ccd::MedicationUseNoneKnownDeprecated.build
    md.value.should == [Cda::CV.new(:code=>"182904002", :display_name=>"Drug treatment unknown", :code_system=>"2.16.840.1.113883.6.96")]
  end

  example do
    ro = Ccd::ResultObservation.build
    #ro.template_id.first.root.should == {:code=>"2.16.840.1.113883.10.20.22.4.2"}.with_indifferent_access
    ro.template_id.first.root.should == '2.16.840.1.113883.10.20.22.4.2'
  end
end
