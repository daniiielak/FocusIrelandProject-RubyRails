class CartsController < ApplicationController
	
	def show
			@order_items = current_order.order_items
	end

	
	def index
			session.delete(:order_id)
	end

end