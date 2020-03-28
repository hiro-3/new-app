class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception

 add_flash_types :success, :info, :warning, :danger

 helper_method :current_user, :logged_in?, :comment_in?
 
  def log_in(user)
   session[:user_id] = user.id
  end 
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
  !current_user.nil?
  end

  def current_comment
   @current_comment ||= Comment.find_by(description: comment[:description])
  end 
   
  def comment_in?
  !current_comment.nil?
  end 
end 