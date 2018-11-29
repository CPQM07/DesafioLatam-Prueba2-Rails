class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @first_user_taks = @task.users.limit(5)
  end
end
