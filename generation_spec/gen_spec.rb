require_relative 'gen_spec_helper'
require 'tmpdir'

describe Gen do
  include described_class
  example do
    generate
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
    require 'cda'
    require 'virtus'
    Dir["#{File.dirname(__FILE__)}/../lib/cda/**/*rb"].each do |f|
      require f
    end
  end
end
