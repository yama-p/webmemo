class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)

    if @task.save
      redirect_to project_path(@task.project_id)
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to project_task_path(@task.project_id, @task.id)
    else
      render 'edit'
    end
  end

  def show
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(params[:project_id])
  end

  def toggle
    render body: nil
    @task = Task.find(params[:id])
    @task.done = !@task.done
    @task.save
  end

  def like
    # render body: nil
    @task = Task.find(params[:id])
    @task.like = @task.like + 1
    @task.save
  end

  private

    def task_params
      params[:task].permit(:title, :overview, :detail, :project_id, :start, :limit)
    end

end
