class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :order_lines, :prod_sku, :product_id
  end
end
