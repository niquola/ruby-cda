require_relative 'gen_spec_helper'
require 'tmpdir'

describe Gen do
  include described_class

  it 'should generat at least Act, Section and Observation' do
    generate
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
    require 'cda'
    require 'virtus'

    expect do
      Dir["#{File.dirname(__FILE__)}/../lib/cda/**/*rb"].each { |f| require f }
      Cda::Act
      Cda::Section
      Cda::Observation
    end.not_to raise_error
  end
end
