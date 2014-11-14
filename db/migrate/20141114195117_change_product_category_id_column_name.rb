class ChangeProductCategoryIdColumnName < ActiveRecord::Migration
  def change
  	rename_column :products, :prod_category_id, :product_category_id
  end
end
