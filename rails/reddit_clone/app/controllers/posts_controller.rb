class PostsController < ApplicationController
  def index
    @posts = Post.all.order(updated_at: :desc).limit(10)
  end

  def new
    # TODO delete this when you add authentication
    @user = User.first
    @post = Post.new
  end

  def create
    @user = User.first
    @post = Post.new(post_params)
    @post.user = @user

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path, info: 'Post successfully created!'}
      else
        format.html { render :new, flush: true }
      end
    end
  end

  def edit
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :description)
  end
end
