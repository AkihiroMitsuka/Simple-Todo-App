class TasksController < ApplicationController

  # @param @task
  # タスクを全て取得する
  def index
    @task = Task.all
  end

  # route /tasks/new
  def new
    @task = Task.new
  end

  # TaskCreate
  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  # Strong Parameters field
  private
    def task_params
      params.require(:task).permit(:title)
    end

end
