class ApplicationController < ActionController::Base
  before_action :check_user

  def current_user
    User.find_by(id: session[:user_id])      
  end

  def check_user
    redirect_to login_path if ! current_user
  end
end
