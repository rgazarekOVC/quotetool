class OrderLine < ActiveRecord::Base
	belongs_to :order
	validates :order_id, presence: true
	belongs_to :product
	validates :product_id, presence: true
end
