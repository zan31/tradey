class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
  
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_current_user

    def set_current_user
      User.current = current_user
    end

    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      end
end
