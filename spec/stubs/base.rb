class TemplateId
  include Virtus.model
  attribute :root, String
end

class Base
  include Virtus.model

  attribute :template_id, TemplateId
  attribute :id, String
end

class Derived < Base
  extend Ccd::Dsl
  constraint 'template_id.root', value: '12'
end


class Foo < Base
  extend Ccd::Dsl
  constraint 'template_id.root', cardinality: '1..1'
end
