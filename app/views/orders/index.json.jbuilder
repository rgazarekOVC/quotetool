json.array!(@orders) do |order|
  json.extract! order, :id, :emp_id, :cust_id, :order_num
  json.url order_url(order, format: :json)
end
