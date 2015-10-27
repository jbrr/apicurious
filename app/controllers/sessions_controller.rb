class SessionsController < ApplicationController
  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      flash[:success] = "You are now logged in!"
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong!"
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    flash[:success] = "You are now logged out!"
    redirect_to root_path
  end
end
