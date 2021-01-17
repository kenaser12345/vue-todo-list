class HomeController < ApplicationController

  def index
    @tasks = current_user.tasks
    @user = current_user
  end
end
