json.array!([:admin, @products]) do |product|
  json.extract! product, :id, :title, :descirption
  json.url admin_product_url(product, format: :json)
end
