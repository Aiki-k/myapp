class ChecksController < ApplicationController
  before_action :set_item
  before_action :check_params

  def create
    tweet = Tweet.find(params{:id})
    check = Check.save(user_id: current_user.id, tweet_id: tweet.id)
    render json:{ post: check }
  end

  def checked
    tweet = Tweet.find(params[:id])
    if tweet.checked
      tweet.update(checked: false)
    else
      tweet.update(checked: true)
    end
    item = Tweet.find(params[:id])
    render json: { tweet: item }
  end

  private

  def set_item
    @tweet = Tweet.find_by(id: params[:tweet_id])
  end

  def check_params
    require(:tweet).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
