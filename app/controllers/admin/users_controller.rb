class Admin::UsersController < ApplicationController
  def index
    @user = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    #raise params.inspect
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_users_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to admin_users_path
    end
  end

  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
