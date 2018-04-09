class UserController < ApplicationController
    def login
    end
    def admin_login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Admin login Sucessfull!"
        redirect_to :controller => products
    end
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have sucessfully logged out"
        redirect_to :controller => products
    end
end
