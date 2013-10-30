require_relative 'gen_spec_helper'
require 'tmpdir'

describe Gen do
  include described_class
  before(:all) { generate }

  it 'should generat at least Act, Section and Observation' do
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

  it 'should generate hierarchy of classes' do
    Cda::PIVL_TS.should < Cda::SXCM_TS
    Cda::ST.should < Cda::ED
  end
end
