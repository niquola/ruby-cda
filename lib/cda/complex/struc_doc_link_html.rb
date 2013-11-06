class Cda::StrucDocLinkHtml
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :href, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :name, String, annotations: {:kind=>:attribute}
  attribute :rel, String, annotations: {:kind=>:attribute}
  attribute :rev, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :title, String, annotations: {:kind=>:attribute}
end
