class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # @post.user_id = current_user.id

    if @post.save
      redirect_to posts_path, notice: "Post '#{@post.title}' was successfully created!"
    else
      redirect_to posts_path
    end
  end

  def edit
  end

  def update
    if @post.save(post_params)
      redirect_to post_path(@post), notice: "Post '#{@post.title}' was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Post '#{@post.title}' was successfully deleted!"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
