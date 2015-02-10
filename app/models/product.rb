class Product < ActiveRecord::Base
	has_many :order_lines

	belongs_to :product_category
	validates :product_category_id, presence: true
end
