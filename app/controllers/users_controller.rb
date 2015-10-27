class UsersController < ApplicationController
  def show
    unless current_user
      flash[:notice] = "You must log in to see your profile"
      redirect_to root_path
    end
  end
end
