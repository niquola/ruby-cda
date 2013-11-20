require 'spec_helper'
require 'support/test_entities'
require 'cda/rspec/validation_rules'

describe Cda::XmlBuilder do
  include Cda::TestEntities
  include Cda::RSpec::ValidationRules

  let(:builder) {
    builder = Cda::XmlBuilder.new(test_model)
    builder.xml = Nokogiri::XML::Builder.new
    builder
  }

  let(:document) {
    builder.build_document.tap(&:remove_namespaces!)
  }

  it 'should build xml' do
    shall_contain_exactly_one 'test-model', attr: 'Attr value' do
      shall_contain_exactly_one 'templateId', root: 'test-template-id'
      shall_contain_exactly_one 'content', 'Some content'
      shall_contain_exactly_one 'contentWrapper', attr: 'wrapper attr' do
        shall_contain_exactly_one 'wrappedContent', 'Some wrapped content'
      end
      shall_contain_exactly_one 'entry/foo', 'Foo 1'
      shall_contain_exactly_one 'entry/foo', 'Foo 2'
      shall_contain_exactly_one 'entryWrapper/entry/foo', 'Bar 1'
      shall_contain_exactly_one 'entryWrapper/entry/foo', 'Bar 2'
    end
  end
end
