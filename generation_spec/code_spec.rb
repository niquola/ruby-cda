require_relative 'gen_spec_helper'

describe Gen::Codeg do
  include described_class

  it 'should generate class' do
    gklass('Address').tap do |klass|
      klass.should include('class Address')
      klass.should include('end')
    end
  end

  it 'should generate inherited class' do
    gklass('Address', ancestor: 'Message')
      .should include('class Address < Message')
  end

  it 'should generate with namespace' do
    gklass('Address', module: 'Hl7').should include('module Hl7')
  end

  it 'should generate with namespace in other way' do
    gklass('Hl7::Address').should include('class Hl7::Address')
  end

  it 'should generate via parameter' do
    gklass('Address', body: '# Foo.').should include('Foo')
  end

  it 'should generate via block' do
    gklass('Address') do |indent|
      ' ' * (indent + 2) + '# Bar.'
    end.should include('Bar')
  end
end
