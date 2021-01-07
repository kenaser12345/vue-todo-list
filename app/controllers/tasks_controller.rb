class TasksController < ApplicationController
  before_action :find_task, only: [:edit, :update, :destroy, :show]
  def index
    @tasks = current_user.tasks
  end
  
  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.create(task_params)
    if @task.save
      redirect_to root_path, notice: '新增任務成功!'
    else
      flash[:notice]= '新增任務失敗!'
      render :new
    end
  end

  def edit
    
  end

  def update
    if @task.update(task_params)
      redirect_to root_path, notice: '修改任務成功!'
    else
      flash[:notice]= '修改任務失敗!'
      render :edit
    end
  end

  def destroy
    if @task.destroy
      flash[:notice] = '刪除成功'
    else
      flash[:notice] = '刪除失敗'
    end
    redirect_to root_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
