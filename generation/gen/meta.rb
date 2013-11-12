module Gen::Meta
  def ref(node)
    node[:ref]
  end

  def name(node)
    node[:name]
  end

  def type(node)
    node[:type]
  end

  def elements(node)
    node.xpath('.//sequence//element')
  end

  def attributes(node)
    node.xpath('.//attribute')
  end

  def type_desc(node)
    node.xpath('./annotation/documentation')
    .map(&:text)
    .join
    .chomp
    .presence
  end

  def simple_type(node)
    node.xpath('./simpleType/restriction').first
  end

  def base_type(node)
    node = node.xpath('./complexContent/extension').first ||
           node.xpath('./simpleContent/extension').first ||
           node.xpath('./complexContent/restriction').first
    base = node && node[:base]
    base && base.gsub(/^xsd:/,'')
  end

  def root_datatype?(name)
    not name =~ /CONTENT$/
  end

  def is_collection?(el_ref)
    el_ref[:maxOccurs] == 'unbounded'
  end

  def mixed?(node)
    node[:mixed]
  end

  def nested_type?(el_ref)
    ref(el_ref) =~ /\..+$/
  end

  def nested_type_name(el_ref)
    ref(el_ref).split('.').last.gsub(' ', '_')
  end

  private

  extend self
end
