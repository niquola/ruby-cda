class Cda::Thumbnail < Cda::ED
  attribute :reference, Cda::TEL
  attribute :thumbnail, Cda::Thumbnail
  attribute :_text, String
end
