class Cda::Thumbnail < Cda::ED
  include Virtus.model
  attribute :reference, Cda::TEL
  attribute :thumbnail, Cda::Thumbnail
end
