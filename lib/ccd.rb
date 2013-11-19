require 'ccd/config'

module Ccd
  autoload :Dsl, 'ccd/dsl.rb'
  autoload :Registry, 'ccd/registry'
end

require 'ccd/autoloads'

def Ccd.load_extension(file_name)
  if extension_path = Ccd.config[:extension_path]
    fname = extension_path + "/#{file_name}"
    if File.exists?(fname)
      load(fname)
    end
  end
end
