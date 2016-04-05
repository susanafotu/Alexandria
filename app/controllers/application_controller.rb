class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # IS NOT CURRENTLY WORKING. NEED TO FIX
  # for setting user, authorizing them
  before_filter :set_current_user
  #before_filter :set_current_user, :authorize
  
  
  # for user authentication, taken directly from myrottenpotatoes
  protected # prevents method from being invoked by a route
  def set_current_user #creates this variable that we are going to use later on and will be stored in user table
    # we exploit the fact that find_by_id(nil) returns nil
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    #redirect_to login_path and return unless @current_user
  end
  
  def authorize
    redirect_to loginuser_path, alert: "Not Authorized" if session[:user_id].nil?
  end
end
