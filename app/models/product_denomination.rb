class ProductDenomination
  include Mongoid::Document
  include Mongoid::Alize
  field :product_id, type: Integer
  field :price, type: String
  field :denomination, type: String
  field :discount, type: String
  field :image_url, type: String

  belongs_to :product


  def calculated_denomination
  ("#{self.denomination}".to_f * 0.001).to_s + " kg"
  end
end
