class TasksController < ApplicationController

  # @param @task
  # タスクを全て取得する
  def index
    @task = Task.all
  end

end
