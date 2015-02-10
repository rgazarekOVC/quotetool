class AddProductSkuToOrderLines < ActiveRecord::Migration
  def change
  	add_column :order_lines, :prod_sku, :string
  	remove_column :order_lines, :product_id, :integer
  end
end
