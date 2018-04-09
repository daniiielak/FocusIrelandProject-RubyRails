class ThankyousController < ApplicationController
  def index
    @order_items = current_order.order_items
  end
  def show
    @order_items = current_order.order_items
  end
  def destroy
    @order_items = current_order.order_items
  end

end
