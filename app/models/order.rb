class Order < ActiveRecord::Base
	has_many :order_lines
	has_many :product_categories, through: :order_lines

end
