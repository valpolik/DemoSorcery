class ApplicationController < ActionController::Base
  before_action :require_login, :session2

  private

  def not_authenticated
    flash[:warning] = 'You have to authenticate to access this page.'
    redirect_to log_in_path
  end

  def session2
    # p session[:user_id]
    # Rails.logger.debug(cookies.map { |cookie| cookie.join('=') }.join("\n"))
  end

  def current_users
    User.current_users
  end
  
  helper_method :current_users
end
