json.array!(@products) do |product|
  json.extract! product, :id, :title, :desc, :price, :discount
  json.url product_url(product, format: :json)
end
