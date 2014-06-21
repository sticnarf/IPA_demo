class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:user][:member] == "0"
      @user.member = "applying"
      @user.classroom = params[:user][:classroom]
    end
    if @user.save
      sign_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation)
  end
end
