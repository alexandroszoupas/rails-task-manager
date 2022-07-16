class TasksController < ApplicationController

def index
  @tasks = Task.all
end

def show
  @task = Task.find(params[:id])
end

def new
  @task = Task.new
end

def create
  @task = Task.new(required_params_create)
  @task.save
  redirect_to tasks_path(@task)
end

def edit
  @task = Task.find(params[:id])
end

def update
  @task = Task.find(params[:id])
  @task.update(required_params_create)
  redirect_to tasks_path(@task)
end

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to tasks_path
end

private

def required_params_create
  params.require(:task).permit(:title, :details)
end

def required_params_update
  params.require(:task).permit(:title, :details)
end

end
