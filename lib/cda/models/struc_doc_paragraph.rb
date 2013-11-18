class Cda::StrucDocParagraph < Cda::Base
  attribute :caption, Cda::StrucDocCaption
  attribute :content, Cda::StrucDocContent
  attribute :link_html, Cda::StrucDocLinkHtml
  attribute :sub, Cda::StrucDocSub
  attribute :sup, Cda::StrucDocSup
  attribute :br, Cda::StrucDocBr
  attribute :footnote, Cda::StrucDocFootnote
  attribute :footnote_ref, Cda::StrucDocFootnoteRef
  attribute :render_multi_media, Cda::StrucDocRenderMultiMedia
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :_text, String
end
