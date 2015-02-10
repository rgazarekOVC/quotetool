class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :emp_id
      t.integer :cust_id
      t.integer :order_num

      t.timestamps
    end
  end
end
