class OrderItemsController < ApplicationController
		

	def create
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
		@order.save
		session[:order_id] = @order.id
		
		flash[:success] = "Item was sucessfully added!" 
		redirect_back(fallback_location: root_path)
		
	end

	def update
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.update_attributes(order_item_params)
		@order_items = @order.order_items
		
		flash[:success] = "Item was sucessfully added!"
		redirect_back(fallback_location: root_path)
	end

	def destroy
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = @order.order_items
		
		flash[:danger] = "Item was removed from the Cart!" 
		redirect_back(fallback_location: root_path)
	end

	private
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity)
		end
end