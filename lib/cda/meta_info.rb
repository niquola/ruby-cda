require 'delegate'

class Cda::MetaInfo
  attr_reader :elements, :attributes, :text

  def self.for(klass)
    new(klass)
  end

  def has_text?
    !text.nil?
  end

  private

  def initialize(klass)
    fields = convert_to_fields(klass.attribute_set)
    @elements, @attributes, @text = divide_fields_by_kind(fields)
  end

  def convert_to_fields(attribute_set)
    attribute_set.map { |attr| Field.new(attr) }
  end

  def divide_fields_by_kind(fields)
    #noinspection RubyArgCount
    allowed_fields = fields.select { |f| f.allowed? }
    groups = allowed_fields.group_by { |f| (f.name == :_text) ? :text : f.kind }
    [groups[:element] || [], groups[:attribute] || [], groups[:text] && groups[:text].first]
  end

  class Field < DelegateClass(Virtus::Attribute)
    def fully_qualified_name
      sanitized_name = sanitize_element_name(name)
      ns = annotations[:ns]
      !ns.nil? ? "#{ns}:#{sanitized_name}" : sanitized_name
    end

    def get_value(instance)
      instance.send(name)
    end

    def set_value(instance, value)
      instance.send("#{name}=", value)
    end

    def model_class
      respond_to?(:member_type) ? member_type.primitive : type.primitive
    end

    def complex?
      model_class.respond_to?(:attribute_set)
    end

    def allowed?
      !prohibited?
    end

    def prohibited?
      annotations[:use] == :prohibited
    end

    def kind
      annotations.fetch(:kind, :element)
    end

    def collection?
      type.respond_to?(:member_type)
    end

    def element_name
      @element_name ||= begin
        sanitize_element_name(model_class.respond_to?(:template_type) ? model_class.template_type : name)
      end
    end

    def build_method
      annotations[:build_method]
    end

    def wrapper_element_name
      @wrapper_element_name ||= begin
        name, _ = annotations[:wrap_with]
        sanitize_element_name(name)
      end
    end

    def new_instance
      type.primitive.new
    end

    private

    def sanitize_element_name(element_name)
      element_name.to_s.camelize(:lower).singularize.presence
    end
  end
end
