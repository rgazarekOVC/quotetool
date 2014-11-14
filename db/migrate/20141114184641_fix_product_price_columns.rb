class FixProductPriceColumns < ActiveRecord::Migration
  def change
  	rename_column :products, :prod_cost, :prod_nrc_cost
  	add_column :products, :prod_mrc_cost, :decimal
  	  	rename_column :products, :prod_price, :prod_nrc_price
  	add_column :products, :prod_mrc_price, :decimal
  end
end
