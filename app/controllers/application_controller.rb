class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :login_required
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def login_required
    if current_user.nil? and !['sessions'].include? controller_name
      redirect_to new_session_path
    end
  end
  
  
  helper_method :current_user
end
