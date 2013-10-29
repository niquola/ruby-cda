module Gen::Pth
  def from_root_path(path)
    File.dirname(__FILE__) + "/../../#{path}"
  end

  def base_path(*dirs)
    path = dirs.join('/')
    from_root_path("lib/cda/#{path}")
  end

  extend self
end
