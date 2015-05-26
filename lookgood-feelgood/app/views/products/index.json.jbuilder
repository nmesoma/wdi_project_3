json.array!(@products) do |product|
  json.extract! product, :id, :image, :name, :description, :brand, :category, :price_retail, :currency_iso
  json.url product_url(product, format: :json)
end
