class ThankyousController < ApplicationController
  
  
  def show
    session.delete(:order_id)
  end
  
  
end