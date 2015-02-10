class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :prod_sku
      t.decimal :prod_cost
      t.decimal :prod_price
      t.string :prod_account
      t.integer :prod_category_id

      t.timestamps
    end
    add_index :products, :prod_sku, unique: true
  end
end
