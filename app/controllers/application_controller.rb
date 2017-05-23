class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
      if !current_user
          redirect_to login_path(next: request.fullpath)
      end
  end
  
  def not_found
    llrender file: "public/404", status: 404
  end
  
  helper_method :not_found
end
