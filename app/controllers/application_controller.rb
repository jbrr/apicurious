class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :client

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def client
    TwitterService.new.client ||= current_user
  end
end
