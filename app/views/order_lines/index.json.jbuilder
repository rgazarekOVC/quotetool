json.array!(@order_lines) do |order_line|
  json.extract! order_line, :id, :order_id, :line_num, :product_id, :quantity, :discount, :order_num, :notes, :visible
  json.url order_line_url(order_line, format: :json)
end
