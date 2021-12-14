class TweetsController < ApplicationController
  before_action :find_id, only: [:edit, :show]
  before_action :top_redirect, except: :top

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
      redirect_to 
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tweet.save(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy  
    redirect_to root_path
  end

  def show
    @tweet_tags = @tweet.tags
    if status == 200
      Check.create(user_id: current_user.id, tweet_id: @tweet.id)
    end
  end

  def search
    @tag_list = Tag.all  #こっちの投稿一覧表示ページでも全てのタグを表示するために、タグを全取得
    @tag = Tag.find(params[:tag_id])  #クリックしたタグを取得
    @tweets = @tag.tweets.all           #クリックしたタグに紐付けられた投稿を全て表示
  end

  def top
    @user = User.all
  end

  def post
    @tag_list = Tag.all
    @tweets = Tweet.all.order("created_at DESC")
    @check = Check.new
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :text, :image)
  end

  def find_id
    @tweet = Tweet.find(params[:id])
  end

  def save_method
    @tweet = Tweet.new(tweet_params)
  end

  def top_redirect
    unless user_signed_in?
      redirect_to "/tweets/top"
    end
  end

  def check_params
    params.require(:check).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end