class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit

  protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    rescue_from Pundit::NotAuthorizedError do |exception|
      redirect_to root_url, alert: exception.message
   end

   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
   end

  private
  
  def current_user
    # checks for a User based on the session’s user id that was stored when they logged in, and stores result in an instance variable
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


# before_action :flash_attack

#   private

  # def flash_attack
  #   flash[:notice] = "Flash Attack - Flash Attack"
  # end

end