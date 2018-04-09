class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    update_attrs = [:password, :password_confirmation, :current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

    protect_from_forgery with: :exception

    def after_sign_in_path_for(resource)
    "/signedinuserprofile"
    
    end

    include ApplicationHelper

end
