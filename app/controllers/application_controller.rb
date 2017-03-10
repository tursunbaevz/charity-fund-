class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception




  def admin_user
  redirect_to(root_url) unless current_user.admin?
  end


  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in'
      redirect_to login_url
    end
  end

  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end



end
