class OrderLine < ActiveRecord::Base
	belongs_to :order
	validates :order_id, presence: true
	belongs_to :product
	validates :product_id, presence: true
	
	has_many :product_categories, through: :product

	scope :sortOrderLines, -> (getCategoryID)  {joins(:product).where("product_category_id =?", getCategoryID)} 
 
end
