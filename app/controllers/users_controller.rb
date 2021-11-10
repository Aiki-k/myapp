class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.username
    @tweets = current_user.tweets.order("created_at DESC")
  end
end
