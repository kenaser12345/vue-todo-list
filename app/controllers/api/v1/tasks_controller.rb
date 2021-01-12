class Api::V1::TasksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_task_info
    task = current_user.tasks.find(params[:task_id])
    render json: {name: task.name, description: task.description}, status: 200
  end

  
end