class TasksController < ApplicationController

  before_action :set_project_task, only: [:edit, :show]
  before_action :find_task, only: [:update, :destroy, :toggle, :like, :send_uploadfile]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
    @task.project_id = params[:project_id]
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)

    if @task.save
      redirect_to project_task_path(@task.project_id, @task.id), notice: 'タスクの作成に成功しました'
    else
      flash[:alert] = @task.errors.full_messages[0]
      render 'new'
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to project_task_path(@task.project_id, @task.id), notice: 'タスクの編集に成功しました'
    else
      flash[:alert] = @task.errors.full_messages[0]
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to project_path(params[:project_id])
  end

  def toggle
    render body: nil
    @task.done = !@task.done
    @task.save
  end

  def like
    @task.like = @task.like + 1
    @task.save
  end

  def send_uploadfile
    if (!@task.uploadfile.nil?)
      send_data(@task.uploadfile, type:@task.uploadctype, disposition:'inline')
    end
  end

  private
    def set_project_task
      @project = Project.find(params[:project_id])
      @task = Task.find(params[:id])
    end

    def find_task
      @task = Task.find(params[:id])
    end

    def task_params
      params[:task].permit(:title, :overview, :detail, :project_id, :start, :limit, :data)
    end
end
