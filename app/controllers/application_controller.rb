class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For API's you may want to use :null_session instead.
    protect_from_forgery with: :exception
    # call the configured params
    before_action :configure_permited_parameters, if: :devise_controller?
    
    
    # protect the database, while allowing these fields to be updated.
    protected
    def configure_permited_parameters
        devise_parameter_sanitizer.permit(:sign_up)        { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
        devise_parameter_sanitizer.permit(:sign_in)        { |u| u.permit(:login, :username, :email, :password, :remember_me) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation) }
    end 
    
end
