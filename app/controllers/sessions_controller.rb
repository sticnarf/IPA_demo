class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:sessions][:username])
    if user && user.authenticate(params[:sessions][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = "用户名或密码错误"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
