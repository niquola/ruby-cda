module Ccd
  class Registry < Cda::TemplatesRegistry
    include Singleton

    instance.instance_eval File.read(File.expand_path('../_registry.rb', __FILE__)), __FILE__, __LINE__
  end
end