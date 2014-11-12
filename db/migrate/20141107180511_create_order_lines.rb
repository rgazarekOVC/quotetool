class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :line_num
      t.integer :product_id
      t.integer :quantity
      t.integer :discount
      t.integer :order_num
      t.text :notes
      t.boolean :visible

      t.timestamps
    end
  end
end
