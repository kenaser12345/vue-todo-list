class SessionsController < ApplicationController
  before_action :find_session_user, only: [:create]
  skip_before_action :check_user
  def new
    @user = User.new
  end

   def create
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: '登入成功'
    else
      redirect_to login_path, notice: '輸入錯誤'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: '已登出'
  end

  private

  def find_session_user
    @user = User.find_by(email: params[:user][:email].downcase)
  end
end
