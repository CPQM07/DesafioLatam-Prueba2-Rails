class TaskUserController < ApplicationController
  def attach
    @task = Task.find(params[:id])
    @is_done = current_user.tasks << @task unless current_user.tasks.exists? @task.id
    if @is_done
      redirect_to root_path, notice: "Estimado #{current_user.email}, la tarea #{@task.title}, a sido agregada satisfactoriamente."
    else
      redirect_to root_path, alert: 'La tarea no pudo ser agregada a tu lista'
    end
  end

  def dettach
    @task = Task.find(params[:id])
    @is_remove = current_user.tasks.delete @task if current_user.tasks.exists? @task.id
    if @is_remove
      redirect_to root_path, notice: "Estimado #{current_user.email}, la tarea #{@task.title}, a sido retirada satisfactoriamente."
    else
      redirect_to root_path, alert: 'La tarea no pudo ser removida de tu lista, ya que no la haz realizado'
    end
  end

end
