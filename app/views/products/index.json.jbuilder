json.array!(@products) do |product|
  json.extract! product, :id, :prod_sku, :prod_cost, :prod_price, :prod_account, :prod_category_id
  json.url product_url(product, format: :json)
end
