class ChangeProductidType < ActiveRecord::Migration
  def change
  	change_column :order_lines, :product_id, :integer
  end
end
