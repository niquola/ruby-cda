class Cda::StrucDocItem < Cda::Base
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :content, Cda::StrucDocContent, annotations: {:class=>"Cda::StrucDocContent"}
  attribute :link_html, Cda::StrucDocLinkHtml, annotations: {:class=>"Cda::StrucDocLinkHtml"}
  attribute :sub, Cda::StrucDocSub, annotations: {:class=>"Cda::StrucDocSub"}
  attribute :sup, Cda::StrucDocSup, annotations: {:class=>"Cda::StrucDocSup"}
  attribute :br, Cda::StrucDocBr, annotations: {:class=>"Cda::StrucDocBr"}
  attribute :footnote, Cda::StrucDocFootnote, annotations: {:class=>"Cda::StrucDocFootnote"}
  attribute :footnote_ref, Cda::StrucDocFootnoteRef, annotations: {:class=>"Cda::StrucDocFootnoteRef"}
  attribute :render_multi_media, Cda::StrucDocRenderMultiMedia, annotations: {:class=>"Cda::StrucDocRenderMultiMedia"}
  attribute :paragraph, Cda::StrucDocParagraph, annotations: {:class=>"Cda::StrucDocParagraph"}
  attribute :list, Cda::StrucDocList, annotations: {:class=>"Cda::StrucDocList"}
  attribute :table, Cda::StrucDocTable, annotations: {:class=>"Cda::StrucDocTable"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :_text, String, annotations: {:class=>"String"}
end
