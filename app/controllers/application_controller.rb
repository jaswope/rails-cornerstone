class ApplicationController < ActionController::Base
  helper_method \
    :current_user_session, 
    :current_user, 
    :logged_in?, 
    :current_user_is_admin?

  filter_parameter_logging :password, :password_confirmation

  protect_from_forgery

  private

  def current_user
    if defined?(@current_user) && !@current_user.nil?
      return @current_user 
    end
    @current_user = current_user_session && current_user_session.user
  end

  def current_user_session
    if defined?(@current_user_session) && !@current_user_session.nil?
      return @current_user_session 
    end
    @current_user_session = UserSession.find
  end
 
end

