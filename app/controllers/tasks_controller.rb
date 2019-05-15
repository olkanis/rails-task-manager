class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(set_task_params)
    @task.save
  end

  def edit
  end

  def update
    @task.update(set_task_params)
  end

  def destroy
    @task.destroy
  end

  private

  def set_task_params
    params.require(:task).permit(:title, :details, :checkbox_value)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
