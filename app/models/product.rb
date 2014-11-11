class Product

  include Mongoid::Document
  include Mongoid::Alize
  field :title, type: String
  field :description, type: String

  

  has_many :product_denominations, :dependent => :destroy
  accepts_nested_attributes_for :product_denominations, :reject_if => lambda { |a| a[:image_url].blank? }, :allow_destroy => true
  # ***
  alize :product_denominations # denormalize all fields from posts (the default w/ no fields specified)
  # ***
end
