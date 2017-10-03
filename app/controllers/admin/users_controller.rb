class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = 'User successfully saved.'    
      redirect_to admin_user_path(@user)
    end
  end

  def edit
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit :first_name, :last_name, :email,
      :password, :password_confirmation, :avatar, :admin
  end

end