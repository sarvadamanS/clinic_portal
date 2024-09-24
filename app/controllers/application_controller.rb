# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  # Check for the logged-in user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Check if user is logged in
  def logged_in?
    !!current_user
  end

  # Restrict access to logged-in users
  def require_user
    redirect_to login_path unless logged_in?
  end
end
