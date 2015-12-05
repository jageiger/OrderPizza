class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  layout :layout_by_resource

    def layout_by_resource
      if devise_controller? && resource_name == :user && (action_name == 'new' || (action_name == 'edit' && !user_signed_in?) || action_name == 'create' || action_name=='show' || action_name=='update')
         "login"
      else
        "application"
      end
    end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name
    devise_parameter_sanitizer.for(:sign_up) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :phone_contact
    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :phone_contact
  end
  
end
