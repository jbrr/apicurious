class SessionsController < ApplicationController
  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      flash[:success] = "You are now logged in!"
    else
      flash[:notice] = "Something went wrong!"
    end
    redirect_to root_path
  end

  def destroy
    session.clear
    flash[:success] = "You are now logged out!"
    redirect_to root_path
  end
end
