require 'pathname'

module Gen::Pth
  def from_root_path(path)
    File.dirname(__FILE__) + "/../../#{path}"
  end

  def base_path(*dirs)
    path = dirs.join('/')
    from_root_path("lib/cda/#{path}")
  end

  def autoloads_file_path
    output_path.join('autoloads.rb')
  end

  def models_path
    output_path.join('models')
  end

  def output_path
    lib_path.join('cda')
  end

  def lib_path
    Pathname.new(File.expand_path('../../../lib', __FILE__))
  end

  def to_relative(path)
    path.relative_path_from(lib_path)
  end

  extend self
end
