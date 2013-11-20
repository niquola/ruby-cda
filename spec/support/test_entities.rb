module Cda::TestEntities
  class CdaTestInstanceIdentifier
    include Virtus.model
    attribute :root, String, annotations: { :kind=>:attribute }
  end


  class CdaTestModelEntry
    include Virtus.model
    attribute :template_id, Array[CdaTestInstanceIdentifier]
    attribute :foo, String
  end

  class CdaTestModelEntryWrapper
    include Virtus.model
    attribute :entry, CdaTestModelEntry
  end

  class CdaTestModel
    include Virtus.model

    attribute :template_id, Array[CdaTestInstanceIdentifier]
    attribute :attr, String, annotations: {kind: :attribute}
    attribute :content, String
    attribute :wrapped_content, String,
              annotations: {wrap_with: [:content_wrapper, attr: 'wrapper attr']}

    attribute :entry, Array[CdaTestModelEntry]
    attribute :entry_wrapper, Array[CdaTestModelEntryWrapper]

    def self.template_type
      "test-model"
    end
  end

  def self.included(base)
    base.class_eval do
      let(:registry) {
        Cda::TemplatesRegistry.new("test-entry-template-id" => CdaTestModelEntry,
                                   "test-template-id" => CdaTestModel)
      }

      let(:model_class) { CdaTestModel }
      let(:entry_class) { CdaTestModelEntry }

      let(:test_model) do
        model_class.new(attr: 'Attr value',
                        template_id: [{ root: "test-template-id" }],
                        content: 'Some content',
                        wrapped_content: 'Some wrapped content',
                        entry: 2.times.map do |i|
                          { foo: "Foo #{i + 1}", template_id: [{ root: "test-entry-template-id" }] }
                        end,

                        entry_wrapper: 2.times.map do |i|
                          {
                            entry: {
                              foo: "Bar #{i + 1}",
                              template_id: [{ root: "test-entry-template-id" }]
                            }
                          }
                        end)
      end
    end
  end
end
