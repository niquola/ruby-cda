class Cda::Thumbnail < Cda::ED
  attribute :reference, Cda::TEL
  attribute :thumbnail, Cda::Thumbnail
end
