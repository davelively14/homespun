json.array!(@products) do |product|
  json.extract! product, :id, :store_id, :name, :description, :list_price, :image_url, :mfger, :model, :in_stock
  json.url product_url(product, format: :json)
end
