class Product < ActiveRecord::Base
	has_many :order_lines
	
	scope :getProductName, ->(getOrderLineID) { select("prod_name").where("id = ?", getOrderLineID).first }

end
