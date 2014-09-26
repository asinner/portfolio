class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created'
    else
      flash[:error] = 'Project could not be saved'
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project updated'
    else
      render :edit, notice: 'Project did not update'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project removed'
  end

  private

  def project_params
    params.require(:project).permit(:title, :category, :description, :url)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
