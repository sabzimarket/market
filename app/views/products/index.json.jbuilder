json.array!(@products) do |product|
  json.extract! product, :id, :title, :descirption
  json.url product_url(product, format: :json)
end
