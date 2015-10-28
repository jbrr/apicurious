class UsersController < ApplicationController
  def update
    current_user.post_tweet(params[:tweet])
    redirect_to root_path
  end
end
