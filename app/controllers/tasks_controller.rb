class TasksController < ApplicationController
  before _action :set_project, only [:show, :update, :edit, :destroy, :complete]

  def create
    @task = @project.task.create(task_params)

    redirect_to @project
  end
end







private
  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
      params[:tasks].permit(:content))
  end
end
