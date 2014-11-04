class ProductDenomination
  include Mongoid::Document
  include Mongoid::Alize
  field :product_id, type: Integer
  field :price, type: String
  field :denomination, type: String
  field :discount, type: String
  field :image_url, type: String

  belongs_to :product
end
