class Cda::TemplatesRegistry
  def initialize(mappings = {})
    @collection = mappings
  end

  def add(template_id, model_class)
    raise ArgumentError, "template_id is nil" unless template_id
    raise "Already registered #{template_id}, #{model_class}" if @collection.key?(template_id)

    @collection[template_id] = model_class
  end

  def [](template_id)
    @collection[template_id]
  end
end
