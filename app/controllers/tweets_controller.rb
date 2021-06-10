class TweetsController < ApplicationController
  before_action :find_id, only: [:edit, :show]
  before_action :save_method, only: [:create, :update]

  def index
    @tweet = Tweet.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tweet.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :text, :genre_id)
  end

  def find_id
    @tweet = Tweet.find(params[:id])
  end

  def save_method
    @tweet = Tweet.new(tweet_params)
  end
end
