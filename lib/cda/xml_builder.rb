class Cda::XmlBuilder
  attr_reader :model, :template_type
  attr_accessor :xml

  module Helpers
    def format_datetime(time)
      time.presence && Cda::ValueCoercer.date_time_to_string(time) || ''
    end

    def format_date(time)
      time.presence && Cda::ValueCoercer.date_to_string(time) || ''
    end

    def format_human_datetime(time)
      Medapp::Formatting.format_datetime(time) || ''
    end

    def format_human_date(time)
      time.presence && Medapp::Formatting.format_date(time) || ''
    end

    def apply_format(value, format)
      send("format_#{format}", value)
    end

    def determine_format(value)
      case value
        when Time, DateTime
          :datetime
        when Date
          :date
        else
          nil
      end
    end

    def auto_format(value)
      if (format = determine_format(value))
        apply_format(value, format)
      else
        value.to_s
      end
    end
  end

  include Helpers

  def initialize(model)
    @model = model
    @template_type = model.class.template_type
  end

  def build
    build_instance_element(template_type, model)
  end

  def build_document
    self.xml = Nokogiri::XML::Builder.new
    xml.ClinicalDocument(
      'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
      'xsi:schemaLocation' => "urn:hl7-org:v3 http://xreg2.nist.gov:8080/hitspValidation/schema/cdar2c32/infrastructure/cda/C32_CDA.xsd",
      'xmlns' => "urn:hl7-org:v3",
      'xmlns:mif' => "urn:hl7-org:v3/mif"
    ) do |_|
      build
    end
    xml.doc
  end

  def node(name, *args, &block)
    opts = args.extract_options!
    args << opts.each_with_object({}) do |pair, result|
      key, value = pair
      result[key.to_s.camelize(:lower)] = value unless value.blank?
    end
    tag_name = name.to_s
    tag_name = tag_name[0] + tag_name[1..-1].camelize(:lower)
    tag_name = "#{tag_name}_" if xml.respond_to?(tag_name)
    xml.send tag_name, *args, &block
  end

  private

  def build_element(instance, element)
    if element.collection?
      build_elements_collection(instance, element)
    elsif !instance.nil?
      build_single_element(instance, element)
    end
  end

  def build_single_element(instance, element)
    wrap_node_if_required(element) do
      additional_options = get_additional_options(instance, element)
      if instance.class.respond_to?(:attribute_set)
        build_instance_element(element.element_name, instance, additional_options)
      elsif element.name != :_text
        build_value_element(element.element_name, instance, additional_options)
      end
    end
  end

  def build_elements_collection(items, element)
    items.each { |item| build_single_element(item, element) }
  end

  def build_instance_element(element_name, instance, additional_options = {})
    return if instance.nil? || instance == ""
    meta_info = Cda::MetaInfo.for(instance.class)
    options = additional_options.merge(get_attributes_as_hash(instance, meta_info.attributes))
    text = cda_mixed?(instance) ? instance._text : nil
    node(element_name, text, options) do
      meta_info.elements.each do |element|
        if (build_method = element.build_method)
          instance.send(build_method, self, element, :xml)
        else
          build_element(element.get_value(instance), element)
        end
      end
    end
  end

  def cda_mixed?(instance)
    instance.respond_to?(:mixed?) && instance.mixed?
  end

  def build_value_element(element_name, value, additional_options = {})
    node(element_name, auto_format(value), additional_options)
  end

  def get_additional_options(model, element)
    options = {}
    if !templated?(model) && model.class < element.model_class
      options['xsi:type'] = detect_xsi_type(model)
    end
    options
  end

  def templated?(model)
    model.respond_to?(:template_id)
  end

  def detect_xsi_type(instance)
    case instance
      when String
        'ST'
      when Cda::ANY
        get_cda_class(instance.class).name.match(/::(\w+)$/)[1]
      else
        if instance.respond_to?(:type)
          instance.type
        else
          fail "Can't detect xsi:type for #{instance.inspect}"
        end
    end
  end

  def get_cda_class(cls)
    cls.name.starts_with?('Cda::') ? cls : get_cda_class(cls.superclass)
  end

  def get_attributes_as_hash(model, attributes)
    attributes.each_with_object({}) do |attribute, hash|
      hash[attribute.fully_qualified_name] = auto_format(attribute.get_value(model))
    end
  end

  def wrap_node_if_required(element)
    if (wrap_with = element.annotations[:wrap_with])
      node(*wrap_with) { yield }
    else
      yield
    end
  end
end
