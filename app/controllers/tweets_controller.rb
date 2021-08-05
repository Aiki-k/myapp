class TweetsController < ApplicationController
  # before_action :authenticate_user!, except: [:top]
  before_action :find_id, only: [:edit, :show]
  before_action :save_method, only: [:create, :update]
  before_action :top_redirect, except: :top

  def top
  end

  def post
    @tweet= Tweet.order("created_at DESC")
    @tag_list = Tag.all
    @tweets = Tweet.all
  end

  def index
    @tweet = Tweet.order("created_at DESC")
    @tweet2 = Tweet.order(updated_at: :desc).limit(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    tag_list = params[:tweet][:tag_name].split(nil)
    if @tweet.save
      @tweet.save_tag(tag_list)
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
    @tweet = Tweet.find(params[:id])
    @tweet_tags = @tweet.tags
  end

  def search
    @tag_list = Tag.all  #こっちの投稿一覧表示ページでも全てのタグを表示するために、タグを全取得
    @tag = Tag.find(params[:tag_id])  #クリックしたタグを取得
    @tweets = @tag.tweets.all           #クリックしたタグに紐付けられた投稿を全て表示
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :text, :genre_id, :image).merge(user_id: current_user.id)
  end

  def find_id
    @tweet = Tweet.find(params[:id])
  end

  def save_method
    @tweet = Tweet.new(tweet_params)
  end

  def top_redirect
    if user_signed_in?
    else
      redirect_to "/tweets/top"
    end
  end
end