$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..')
require 'virtus'
require 'lib/ccd/dsl'
require 'spec/stubs/base'

describe Derived do
  example do
    d = Derived.build(id: 'a')
    d.id.should == 'a'
    d.template_id.root.should == '12'
  end

  example do
    d = Derived.build(id: 'a', template_id: { root: 'xxx' })
    d.template_id.root.should == '12'
  end

  example do
    expect do
      Foo.build template_id: {}
    end.not_to raise_error
  end
end
