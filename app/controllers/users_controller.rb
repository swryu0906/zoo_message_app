class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize
   
  def index
    @users = User.all.order(:id)
  end

  def show
    @posts = @user.posts.order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "New user '#{@user.username}' was successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "User '#{@user.username}' profile was updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "User '#{@user.username}' was successfully deleted!"
  end

  private

  def user_params
    params.require(:user).permit(:username, :description, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
