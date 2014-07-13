class Api::V1::TasksController < ApplicationController

  respond_to :json  
  def index
    render json: Task.all
  end

  def show
    render json: task
  end

  def create
    respond_with :api, :v1, Task.create(task_params)
  end

  def update
    respond_with task.update(task_params)
  end

  def destroy
    respond_with task.destroy
  end

  private

  def task
    Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_on, :completed_on)
  end

end
