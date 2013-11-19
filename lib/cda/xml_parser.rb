class Cda::XmlParser
  attr_accessor :registry

  def initialize(xml, registry)
    @registry = registry
    super(xml)
  end

  def parse
    instantiate_from_element(resolve_class)
  end

  private

  def parse_attribute(instance, attribute)
    attribute.set_value(instance, value_of("@#{attribute.fully_qualified_name}"))
  end

  def parse_element(instance, element)
    if element.collection?
      parse_elements_collection(instance, element)
    else
      parse_single_element(instance, element)
    end
  end

  def parse_single_element(instance, element)
    unwrap_node_if_required(element) do
      within element.element_name do
        element.set_value(instance, parse_value(element))
      end
    end
  end

  def parse_elements_collection(instance, element)
    items = element.new_instance
    within_each [element.wrapper_element_name, element.element_name].compact.join('/') do
      items << parse_value(element)
    end
    element.set_value(instance, items)
  end

  def parse_value(element)
    if element.complex?
      instantiate_from_element(resolve_class || element.model_class)
    else
      value_of('text()')
    end
  end

  def instantiate_from_element(model_class)
    meta_info = Cda::MetaInfo.for(model_class)
    instance = model_class.new
    meta_info.attributes.each { |attr| parse_attribute(instance, attr) }
    meta_info.elements.each { |element| parse_element(instance, element) }
    instance
  end

  def resolve_class
    template_id = value_of 'templateId/@root'
    template_id.presence && registry[template_id]
  end

  def unwrap_node_if_required(element)
    if element.wrapper_element_name
      within(element.wrapper_element_name) do
        yield
      end
    else
      yield
    end
  end
end
