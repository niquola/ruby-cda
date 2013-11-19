require 'spec_helper'
require 'support/test_entities'

describe Cda::XmlParser do
  include Cda::TestEntities

  let(:test_document) { 'generic-cda-parser-test.xml' }
  cda_xpath('test-model')
  subject { described_class.new(node, registry) }

  it 'should parse document' do
    instance = subject.parse
    instance.should be_a(model_class)
    instance.attr.should == 'Attr value'
    instance.content.should == 'Some content'
    instance.wrapped_content.should == 'Some wrapped content'
    instance.template_id.first.root.should == "test-template-id"
    instance.entry.map(&:foo).should == ['Foo 1', 'Foo 2']
    instance.entry_wrapper.map(&:entry).map(&:foo).should == ['Bar 1', 'Bar 2']
  end
end
