class AddProductNametoProducts < ActiveRecord::Migration
  def change
  	add_column :products, :prod_name, :text
  end
end
